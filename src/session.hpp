#ifndef SESSION_HPP
#define SESSION_HPP

#include "state_manager.hpp"
#include "connection_tcp.hpp"
#include "session_manager.hpp"
#include "telnet_decoder.hpp"
#include "communicator.hpp"
#include "session_data.hpp"
#include "session_io.hpp"
#include "menu_system.hpp"

#include <boost/enable_shared_from_this.hpp>
#include <boost/smart_ptr/shared_ptr.hpp>

#include <boost/asio.hpp>
#include <boost/asio/io_service.hpp>
#include <boost/asio/deadline_timer.hpp>

#include <list>
#include <string>

/*
 * NOTES: Sessions should also have incoming notification buffer
 * or OLM Buffer for message from other nodes and sysops
 * when not in chat.
 */

using boost::asio::deadline_timer;
using boost::asio::ip::tcp;

class Server;
class Session;

typedef boost::shared_ptr<Session> session_ptr;

/**
 * @class Session
 * @author Michael Griffin
 * @date 15/08/2015
 * @file chat_session.hpp
 * @brief handles TCP and SSL individual connection Sessions.
 */
class Session
    : public boost::enable_shared_from_this<Session>
{
public:

    ~Session()
    {
        // Free the Node Number from this session.
        TheCommunicator::instance()->freeNodeNumber(m_session_data->m_node_number);
        std::cout << "~Session, Node: " << m_session_data->m_node_number << std::endl;

        // Free the menu system state and modules when session closes.
        m_state_manager->clean();
        std::cout << "m_menu_manager->clean() Completd!" << std::endl;
    }

    /**
     * @brief Handle the initial Session Creation, Also start the
     *        Telnet Option Negotiation with the client.
     * @param tcp_connection
     * @param room
     * @return
     */
    static session_ptr create(boost::asio::io_service& io_service, connection_ptr connection, session_manager_ptr room)
    {
        session_ptr new_session(new Session(io_service, connection, room));

        if(connection->is_open())
        {
            if(connection->m_is_secure)
            {                
                // Secure Sessions do handshake first!!
                new_session->m_session_data->startUpSessionStats("SSL");
                new_session->m_session_data->handshake();
            }
            else
            {
                new_session->m_session_data->startUpSessionStats("Telnet");                
                new_session->m_session_data->waitingForData();
            }
        }

        // Send out Telnet Negoiation Options
        if(connection->is_open() && !connection->m_is_secure)
        {
            // On initial Session Connection,  setup and send TELNET Options to
            // start the negotiation of client features.
            std::cout << "send initial IAC sequences started." << std::endl;

            // On initial connection, clear and home cursor
            std::string clear_screen = "\x1b[1;1H\x1b[2J";
            new_session->deliver(clear_screen);

            // Need to negotiate this first, then turn off for Linux/osx to switch
            // Otherwise they both ignore the DONT and do not turn it off.
            //new_session->m_session_data->m_telnet_state->sendIACSequences(DO, TELOPT_LINEMODE);
            //new_session->m_session_data->m_telnet_state->addReply(TELOPT_LINEMODE);

            //new_session->m_session_data->m_telnet_state->sendIACSequences(DONT, TELOPT_LINEMODE);

            new_session->m_session_data->m_telnet_state->sendIACSequences(DONT, TELOPT_OLD_ENVIRON);
                       
            new_session->m_session_data->m_telnet_state->sendIACSequences(DO, TELOPT_SGA);
            new_session->m_session_data->m_telnet_state->addReply(TELOPT_SGA);

            new_session->m_session_data->m_telnet_state->sendIACSequences(WILL, TELOPT_ECHO);
            new_session->m_session_data->m_telnet_state->addReply(TELOPT_ECHO);

            new_session->m_session_data->m_telnet_state->sendIACSequences(WILL, TELOPT_SGA);
            new_session->m_session_data->m_telnet_state->addReply(TELOPT_SGA);

            new_session->m_session_data->m_telnet_state->sendIACSequences(WILL, TELOPT_BINARY);
            new_session->m_session_data->m_telnet_state->addReply(TELOPT_BINARY);

            new_session->m_session_data->m_telnet_state->sendIACSequences(DO, TELOPT_BINARY);
            new_session->m_session_data->m_telnet_state->addReply(TELOPT_BINARY);

            new_session->m_session_data->m_telnet_state->sendIACSequences(DO, TELOPT_TTYPE);
            new_session->m_session_data->m_telnet_state->addReply(TELOPT_TTYPE);

            new_session->m_session_data->m_telnet_state->sendIACSequences(DO, TELOPT_NAWS);
            new_session->m_session_data->m_telnet_state->addReply(TELOPT_NAWS);

            // No replies, this can really not be used, only informational.
            //new_session->m_session_data->m_telnet_state->sendIACSequences(DO, TELOPT_NEW_ENVIRON);
            //new_session->m_session_data->m_telnet_state->addReply(TELOPT_NEW_ENVIRON);

            std::cout << "send initial IAC sequences ended." << std::endl;

            // Wait 1.5 Seconds for respones.
            new_session->startDetectionTimer();
        }

        return new_session;
    }

    /**
     * @brief Start ESC Key input timer
     */
    void startDetectionTimer()
    {
        // Add Deadline Timer for 1.5 seconds for complete Telopt Sequences reponses
        m_detection_deadline.expires_from_now(boost::posix_time::milliseconds(1500));
        m_detection_deadline.async_wait(
            boost::bind(&Session::handleDetectionTimer, shared_from_this(), &m_detection_deadline));
    }

    /**
     * @brief Deadline Detection Timer for Negoiation
     * @param timer
     */
    void handleDetectionTimer(boost::asio::deadline_timer* /*timer*/)
    {
        std::cout << "Deadline Terminal Detection, EXPIRED!" << std::endl;

        // Detection Completed, start ip the Pre-Logon Sequence State.
        state_ptr new_state(new MenuSystem(m_session_data));
        m_state_manager->changeState(new_state);
    }

    /**
     * @brief Callback from The Broadcaster to write data to the active sessions.
     * @param msg
     */
    void deliver(const std::string &msg)
    {
        if(msg.size() == 0 || msg[0] == '\0')
        {
            return;
        }

        if(m_connection->is_open())
        {
            if(m_connection->m_is_secure)
            {
                boost::asio::async_write(m_connection->m_secure_socket,
                                         boost::asio::buffer(msg, msg.size()),
                                         boost::bind(&Session::handleWrite, shared_from_this(),
                                                     boost::asio::placeholders::error));
            }
            else
            {
                boost::asio::async_write(m_connection->m_normal_socket,
                                         boost::asio::buffer(msg, msg.size()),
                                         boost::bind(&Session::handleWrite, shared_from_this(),
                                                     boost::asio::placeholders::error));
            }
        }
    }

    /**
     * @brief Callback after Writing Data, If error/hangup notifies
     *        Everyone this person has left.
     * @param error
     */
    void handleWrite(const boost::system::error_code& error)
    {
        if(error)
        {
            std::cout << "async_write error: " << error.message() << std::endl;
            std::cout << "Session Closed()" << std::endl;
        }

        session_manager_ptr room = m_session_data->m_room.lock();
        if(room && error && (!m_session_data->m_is_leaving))
        {
            m_session_data->m_is_leaving = true;

            // Disconenct the session.
            room->leave(m_session_data->m_node_number);

            if(m_connection->is_open())
            {
                if(m_connection->m_is_secure)
                {
                    try
                    {
                        std::cout << "Leaving (SECURE SESSION) Client IP: "
                                  << m_connection->m_secure_socket.lowest_layer().remote_endpoint().address().to_string()
                                  << std::endl;

                        m_connection->m_secure_socket.lowest_layer().shutdown(tcp::socket::shutdown_both);
                        m_connection->m_secure_socket.lowest_layer().close();
                    }
                    catch(std::exception &ex)
                    {
                        std::cout << "Exception closing socket(): " << ex.what() << std::endl;
                    }
                }
                else
                {
                    try
                    {
                        std::cout << "Leaving (NORMAL SESSION) Client IP: "
                                  << m_connection->m_normal_socket.remote_endpoint().address().to_string()
                                  << std::endl;

                        m_connection->m_normal_socket.shutdown(tcp::socket::shutdown_both);
                        m_connection->m_normal_socket.close();
                    }
                    catch(std::exception &ex)
                    {
                        std::cout << "Exception closing socket(): " << ex.what() << std::endl;
                    }
                }
            }
        }
    }

    /**
     * @brief Resolves the Hostname
     * @param ec
     * @param it
     */
    void resolve_handler(const boost::system::error_code &ec,
                         tcp::resolver::iterator it)
    {
        if(!ec)
        {
            tcp::resolver::iterator end;
            for(; it != end; ++it)
            {
                std::cout << "hostname: " << it->host_name() << std::endl;
            }
        }
        else
        {
            std::cout << "Error resolving hostname: " << ec.message() << std::endl;
        }
    }


public:

    /**
     * @brief Session Constructor Initiate the Connection, State, Room.
     * @param tcp_connection
     * @param room
     * @return
     */
    Session(boost::asio::io_service& io_service, connection_ptr connection, session_manager_ptr room)
        : m_connection(connection)
        , m_state_manager(new StateManager())
        , m_session_data(new SessionData(connection, room, io_service, m_state_manager))
        , m_resolv(io_service)
        , m_detection_deadline(io_service)

    {

        /* TESTING
        std::string server =  m_tcp_connection->m_socket.remote_endpoint().address().to_string();
        std::string::size_type idx = server.rfind(":", server.size());
        if (idx != std::string::npos)
            server.erase(0, idx+1);

        std::cout << "ipv6: " << server << std::endl;
        tcp::resolver::query query(server, "");

        //resolv.async_resolve(endpoint, resolve_handler);
        m_resolv.async_resolve(query,
                               boost::bind(&Session::resolve_handler, this,
                                           boost::asio::placeholders::error,
                                           boost::asio::placeholders::iterator));
        */

        if(m_connection->is_open())
        {
            if(!m_connection->m_is_secure)
            {
                try
                {
                    std::cout << "New TCP Session ! " << std::endl;
                    std::cout << "Client IP Address: "
                              << m_connection->m_secure_socket.lowest_layer().remote_endpoint().address().to_string()
                              << std::endl;
                }
                catch(std::exception &ex)
                {
                    std::cout << "Exception remote_endpoint(): " << ex.what() << std::endl;
                }
            }
            else
            {
                try
                {
                    std::cout << "New Secure Session ! " << std::endl;
                    std::cout << "Client IP Address: "
                              << m_connection->m_normal_socket.remote_endpoint().address().to_string()
                              << std::endl;
                }
                catch(std::exception &ex)
                {
                    std::cout << "Exception remote_endpoint(): " << ex.what() << std::endl;
                }


            }
        }

        // Get The First available node number.
        m_session_data->m_node_number = TheCommunicator::instance()->getNodeNumber();
        std::cout << "Node Number: " << m_session_data->m_node_number << std::endl;
    }

    connection_ptr	    m_connection;
    state_manager_ptr   m_state_manager;
    session_data_ptr    m_session_data;
    tcp::resolver       m_resolv;
    deadline_timer      m_detection_deadline;

};


#endif // SESSION_HPP
