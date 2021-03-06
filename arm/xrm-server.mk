##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased
##
## Debug
ProjectName            :=xrm-server
ConfigurationName      :=Debug
WorkspacePath          := "."
ProjectPath            := "."
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Michae Griffin
Date                   :=20/05/17
CodeLitePath           :="/home/merc/.codelite"
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o
ArchiveOutputSwitch    :=
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="xrm-server.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)../src $(IncludeSwitch)../sqlitewrap $(IncludeSwitch)../sqlitewrap/Debug
IncludePCH             :=
RcIncludePath          :=
Libs                   := $(LibrarySwitch)boost_system $(LibrarySwitch)boost_thread $(LibrarySwitch)boost_chrono $(LibrarySwitch)boost_locale $(LibrarySwitch)boost_filesystem $(LibrarySwitch)boost_timer $(LibrarySwitch)boost_regex $(LibrarySwitch)boost_date_time $(LibrarySwitch)SqliteWrapped $(LibrarySwitch)sqlite3 $(LibrarySwitch)pthread $(LibrarySwitch)ssl $(LibrarySwitch)crypto $(LibrarySwitch)yaml-cpp $(LibrarySwitch)util
ArLibs                 :=  "boost_system" "boost_thread" "boost_chrono" "boost_locale" "boost_filesystem" "boost_timer" "boost_regex" "boost_date_time" "libSqliteWrapped.a" "sqlite3" "pthread" "ssl" "crypto" "yaml-cpp" "util"
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch). $(LibraryPathSwitch)../sqlitewrap $(LibraryPathSwitch)../sqlitewrap/Debug

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -Wfatal-errors -g -O0 -pedantic -W -std=c++11 -Wall -Wno-deprecated -Wno-unused-local-typedefs $(Preprocessors)
CFLAGS   :=  -Wfatal-errors -g -O0 -pedantic -W -std=c++11 -Wall -Wno-deprecated -Wno-unused-local-typedefs $(Preprocessors)
ASFLAGS  :=
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/src_ansi_processor.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_common_io.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_communicator.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_encryption.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_menu_system.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_menu_system_editor.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_session_data.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_session_io.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_session_manager.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_state_manager.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_telnet_decoder.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_menu_base.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_access_condition.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_process_posix.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_form_manager.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-sys_config_dao.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-sys_security_dao.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-sys_text_prompts_dao.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-sys_users_dao.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/data-sys_menu_dao.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-sys_menu_prompt_dao.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-sys_session_stats_dao.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-sys_conference_dao.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-sys_file_area_dao.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-sys_grouping_dao.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-sys_message_area_dao.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-sys_network_dao.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-sys_protocol_dao.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-sys_access_level_dao.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/data-sys_db_startup.cpp$(ObjectSuffix) $(IntermediateDirectory)/mods_mod_logon.cpp$(ObjectSuffix) $(IntermediateDirectory)/mods_mod_prelogon.cpp$(ObjectSuffix) $(IntermediateDirectory)/mods_mod_signup.cpp$(ObjectSuffix) $(IntermediateDirectory)/mods_mod_sys_config.cpp$(ObjectSuffix)

Objects1=$(IntermediateDirectory)/forms_form_system_config.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-app_bbs_list_dao.cpp$(ObjectSuffix) $(IntermediateDirectory)/data-app_oneliners_dao.cpp$(ObjectSuffix)



Objects=$(Objects0) $(Objects1)

##
## Main Build Targets
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects)
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	@echo $(Objects1) >> $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_ansi_processor.cpp$(ObjectSuffix): ../src/ansi_processor.cpp $(IntermediateDirectory)/src_ansi_processor.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/ansi_processor.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ansi_processor.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ansi_processor.cpp$(DependSuffix): ../src/ansi_processor.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ansi_processor.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ansi_processor.cpp$(DependSuffix) -MM "../src/ansi_processor.cpp"

$(IntermediateDirectory)/src_ansi_processor.cpp$(PreprocessSuffix): ../src/ansi_processor.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ansi_processor.cpp$(PreprocessSuffix) "../src/ansi_processor.cpp"

$(IntermediateDirectory)/src_common_io.cpp$(ObjectSuffix): ../src/common_io.cpp $(IntermediateDirectory)/src_common_io.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/common_io.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_common_io.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_common_io.cpp$(DependSuffix): ../src/common_io.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_common_io.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_common_io.cpp$(DependSuffix) -MM "../src/common_io.cpp"

$(IntermediateDirectory)/src_common_io.cpp$(PreprocessSuffix): ../src/common_io.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_common_io.cpp$(PreprocessSuffix) "../src/common_io.cpp"

$(IntermediateDirectory)/src_communicator.cpp$(ObjectSuffix): ../src/communicator.cpp $(IntermediateDirectory)/src_communicator.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/communicator.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_communicator.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_communicator.cpp$(DependSuffix): ../src/communicator.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_communicator.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_communicator.cpp$(DependSuffix) -MM "../src/communicator.cpp"

$(IntermediateDirectory)/src_communicator.cpp$(PreprocessSuffix): ../src/communicator.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_communicator.cpp$(PreprocessSuffix) "../src/communicator.cpp"

$(IntermediateDirectory)/src_encryption.cpp$(ObjectSuffix): ../src/encryption.cpp $(IntermediateDirectory)/src_encryption.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/encryption.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_encryption.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_encryption.cpp$(DependSuffix): ../src/encryption.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_encryption.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_encryption.cpp$(DependSuffix) -MM "../src/encryption.cpp"

$(IntermediateDirectory)/src_encryption.cpp$(PreprocessSuffix): ../src/encryption.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_encryption.cpp$(PreprocessSuffix) "../src/encryption.cpp"

$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix): ../src/main.cpp $(IntermediateDirectory)/src_main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_main.cpp$(DependSuffix): ../src/main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_main.cpp$(DependSuffix) -MM "../src/main.cpp"

$(IntermediateDirectory)/src_main.cpp$(PreprocessSuffix): ../src/main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_main.cpp$(PreprocessSuffix) "../src/main.cpp"

$(IntermediateDirectory)/src_menu_system.cpp$(ObjectSuffix): ../src/menu_system.cpp $(IntermediateDirectory)/src_menu_system.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/menu_system.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_menu_system.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_menu_system.cpp$(DependSuffix): ../src/menu_system.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_menu_system.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_menu_system.cpp$(DependSuffix) -MM "../src/menu_system.cpp"

$(IntermediateDirectory)/src_menu_system.cpp$(PreprocessSuffix): ../src/menu_system.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_menu_system.cpp$(PreprocessSuffix) "../src/menu_system.cpp"

$(IntermediateDirectory)/src_menu_system_editor.cpp$(ObjectSuffix): ../src/menu_system_editor.cpp $(IntermediateDirectory)/src_menu_system_editor.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/menu_system_editor.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_menu_system_editor.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_menu_system_editor.cpp$(DependSuffix): ../src/menu_system_editor.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_menu_system_editor.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_menu_system_editor.cpp$(DependSuffix) -MM "../src/menu_system_editor.cpp"

$(IntermediateDirectory)/src_menu_system_editor.cpp$(PreprocessSuffix): ../src/menu_system_editor.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_menu_system_editor.cpp$(PreprocessSuffix) "../src/menu_system_editor.cpp"

$(IntermediateDirectory)/src_session_data.cpp$(ObjectSuffix): ../src/session_data.cpp $(IntermediateDirectory)/src_session_data.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/session_data.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_session_data.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_session_data.cpp$(DependSuffix): ../src/session_data.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_session_data.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_session_data.cpp$(DependSuffix) -MM "../src/session_data.cpp"

$(IntermediateDirectory)/src_session_data.cpp$(PreprocessSuffix): ../src/session_data.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_session_data.cpp$(PreprocessSuffix) "../src/session_data.cpp"

$(IntermediateDirectory)/src_session_io.cpp$(ObjectSuffix): ../src/session_io.cpp $(IntermediateDirectory)/src_session_io.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/session_io.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_session_io.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_session_io.cpp$(DependSuffix): ../src/session_io.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_session_io.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_session_io.cpp$(DependSuffix) -MM "../src/session_io.cpp"

$(IntermediateDirectory)/src_session_io.cpp$(PreprocessSuffix): ../src/session_io.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_session_io.cpp$(PreprocessSuffix) "../src/session_io.cpp"

$(IntermediateDirectory)/src_session_manager.cpp$(ObjectSuffix): ../src/session_manager.cpp $(IntermediateDirectory)/src_session_manager.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/session_manager.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_session_manager.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_session_manager.cpp$(DependSuffix): ../src/session_manager.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_session_manager.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_session_manager.cpp$(DependSuffix) -MM "../src/session_manager.cpp"

$(IntermediateDirectory)/src_session_manager.cpp$(PreprocessSuffix): ../src/session_manager.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_session_manager.cpp$(PreprocessSuffix) "../src/session_manager.cpp"

$(IntermediateDirectory)/src_state_manager.cpp$(ObjectSuffix): ../src/state_manager.cpp $(IntermediateDirectory)/src_state_manager.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/state_manager.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_state_manager.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_state_manager.cpp$(DependSuffix): ../src/state_manager.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_state_manager.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_state_manager.cpp$(DependSuffix) -MM "../src/state_manager.cpp"

$(IntermediateDirectory)/src_state_manager.cpp$(PreprocessSuffix): ../src/state_manager.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_state_manager.cpp$(PreprocessSuffix) "../src/state_manager.cpp"

$(IntermediateDirectory)/src_telnet_decoder.cpp$(ObjectSuffix): ../src/telnet_decoder.cpp $(IntermediateDirectory)/src_telnet_decoder.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/telnet_decoder.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_telnet_decoder.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_telnet_decoder.cpp$(DependSuffix): ../src/telnet_decoder.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_telnet_decoder.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_telnet_decoder.cpp$(DependSuffix) -MM "../src/telnet_decoder.cpp"

$(IntermediateDirectory)/src_telnet_decoder.cpp$(PreprocessSuffix): ../src/telnet_decoder.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_telnet_decoder.cpp$(PreprocessSuffix) "../src/telnet_decoder.cpp"

$(IntermediateDirectory)/src_menu_base.cpp$(ObjectSuffix): ../src/menu_base.cpp $(IntermediateDirectory)/src_menu_base.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/menu_base.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_menu_base.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_menu_base.cpp$(DependSuffix): ../src/menu_base.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_menu_base.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_menu_base.cpp$(DependSuffix) -MM "../src/menu_base.cpp"

$(IntermediateDirectory)/src_menu_base.cpp$(PreprocessSuffix): ../src/menu_base.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_menu_base.cpp$(PreprocessSuffix) "../src/menu_base.cpp"

$(IntermediateDirectory)/src_access_condition.cpp$(ObjectSuffix): ../src/access_condition.cpp $(IntermediateDirectory)/src_access_condition.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/access_condition.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_access_condition.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_access_condition.cpp$(DependSuffix): ../src/access_condition.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_access_condition.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_access_condition.cpp$(DependSuffix) -MM "../src/access_condition.cpp"

$(IntermediateDirectory)/src_access_condition.cpp$(PreprocessSuffix): ../src/access_condition.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_access_condition.cpp$(PreprocessSuffix) "../src/access_condition.cpp"

$(IntermediateDirectory)/src_process_posix.cpp$(ObjectSuffix): ../src/process_posix.cpp $(IntermediateDirectory)/src_process_posix.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/process_posix.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_process_posix.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_process_posix.cpp$(DependSuffix): ../src/process_posix.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_process_posix.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_process_posix.cpp$(DependSuffix) -MM "../src/process_posix.cpp"

$(IntermediateDirectory)/src_process_posix.cpp$(PreprocessSuffix): ../src/process_posix.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_process_posix.cpp$(PreprocessSuffix) "../src/process_posix.cpp"

$(IntermediateDirectory)/src_form_manager.cpp$(ObjectSuffix): ../src/form_manager.cpp $(IntermediateDirectory)/src_form_manager.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/form_manager.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_form_manager.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_form_manager.cpp$(DependSuffix): ../src/form_manager.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_form_manager.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_form_manager.cpp$(DependSuffix) -MM "../src/form_manager.cpp"

$(IntermediateDirectory)/src_form_manager.cpp$(PreprocessSuffix): ../src/form_manager.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_form_manager.cpp$(PreprocessSuffix) "../src/form_manager.cpp"

$(IntermediateDirectory)/data-sys_config_dao.cpp$(ObjectSuffix): ../src/data-sys/config_dao.cpp $(IntermediateDirectory)/data-sys_config_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/config_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_config_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_config_dao.cpp$(DependSuffix): ../src/data-sys/config_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_config_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_config_dao.cpp$(DependSuffix) -MM "../src/data-sys/config_dao.cpp"

$(IntermediateDirectory)/data-sys_config_dao.cpp$(PreprocessSuffix): ../src/data-sys/config_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_config_dao.cpp$(PreprocessSuffix) "../src/data-sys/config_dao.cpp"

$(IntermediateDirectory)/data-sys_security_dao.cpp$(ObjectSuffix): ../src/data-sys/security_dao.cpp $(IntermediateDirectory)/data-sys_security_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/security_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_security_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_security_dao.cpp$(DependSuffix): ../src/data-sys/security_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_security_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_security_dao.cpp$(DependSuffix) -MM "../src/data-sys/security_dao.cpp"

$(IntermediateDirectory)/data-sys_security_dao.cpp$(PreprocessSuffix): ../src/data-sys/security_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_security_dao.cpp$(PreprocessSuffix) "../src/data-sys/security_dao.cpp"

$(IntermediateDirectory)/data-sys_text_prompts_dao.cpp$(ObjectSuffix): ../src/data-sys/text_prompts_dao.cpp $(IntermediateDirectory)/data-sys_text_prompts_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/text_prompts_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_text_prompts_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_text_prompts_dao.cpp$(DependSuffix): ../src/data-sys/text_prompts_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_text_prompts_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_text_prompts_dao.cpp$(DependSuffix) -MM "../src/data-sys/text_prompts_dao.cpp"

$(IntermediateDirectory)/data-sys_text_prompts_dao.cpp$(PreprocessSuffix): ../src/data-sys/text_prompts_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_text_prompts_dao.cpp$(PreprocessSuffix) "../src/data-sys/text_prompts_dao.cpp"

$(IntermediateDirectory)/data-sys_users_dao.cpp$(ObjectSuffix): ../src/data-sys/users_dao.cpp $(IntermediateDirectory)/data-sys_users_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/users_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_users_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_users_dao.cpp$(DependSuffix): ../src/data-sys/users_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_users_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_users_dao.cpp$(DependSuffix) -MM "../src/data-sys/users_dao.cpp"

$(IntermediateDirectory)/data-sys_users_dao.cpp$(PreprocessSuffix): ../src/data-sys/users_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_users_dao.cpp$(PreprocessSuffix) "../src/data-sys/users_dao.cpp"

$(IntermediateDirectory)/data-sys_menu_dao.cpp$(ObjectSuffix): ../src/data-sys/menu_dao.cpp $(IntermediateDirectory)/data-sys_menu_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/menu_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_menu_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_menu_dao.cpp$(DependSuffix): ../src/data-sys/menu_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_menu_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_menu_dao.cpp$(DependSuffix) -MM "../src/data-sys/menu_dao.cpp"

$(IntermediateDirectory)/data-sys_menu_dao.cpp$(PreprocessSuffix): ../src/data-sys/menu_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_menu_dao.cpp$(PreprocessSuffix) "../src/data-sys/menu_dao.cpp"

$(IntermediateDirectory)/data-sys_menu_prompt_dao.cpp$(ObjectSuffix): ../src/data-sys/menu_prompt_dao.cpp $(IntermediateDirectory)/data-sys_menu_prompt_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/menu_prompt_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_menu_prompt_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_menu_prompt_dao.cpp$(DependSuffix): ../src/data-sys/menu_prompt_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_menu_prompt_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_menu_prompt_dao.cpp$(DependSuffix) -MM "../src/data-sys/menu_prompt_dao.cpp"

$(IntermediateDirectory)/data-sys_menu_prompt_dao.cpp$(PreprocessSuffix): ../src/data-sys/menu_prompt_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_menu_prompt_dao.cpp$(PreprocessSuffix) "../src/data-sys/menu_prompt_dao.cpp"

$(IntermediateDirectory)/data-sys_session_stats_dao.cpp$(ObjectSuffix): ../src/data-sys/session_stats_dao.cpp $(IntermediateDirectory)/data-sys_session_stats_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/session_stats_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_session_stats_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_session_stats_dao.cpp$(DependSuffix): ../src/data-sys/session_stats_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_session_stats_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_session_stats_dao.cpp$(DependSuffix) -MM "../src/data-sys/session_stats_dao.cpp"

$(IntermediateDirectory)/data-sys_session_stats_dao.cpp$(PreprocessSuffix): ../src/data-sys/session_stats_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_session_stats_dao.cpp$(PreprocessSuffix) "../src/data-sys/session_stats_dao.cpp"

$(IntermediateDirectory)/data-sys_conference_dao.cpp$(ObjectSuffix): ../src/data-sys/conference_dao.cpp $(IntermediateDirectory)/data-sys_conference_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/conference_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_conference_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_conference_dao.cpp$(DependSuffix): ../src/data-sys/conference_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_conference_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_conference_dao.cpp$(DependSuffix) -MM "../src/data-sys/conference_dao.cpp"

$(IntermediateDirectory)/data-sys_conference_dao.cpp$(PreprocessSuffix): ../src/data-sys/conference_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_conference_dao.cpp$(PreprocessSuffix) "../src/data-sys/conference_dao.cpp"

$(IntermediateDirectory)/data-sys_file_area_dao.cpp$(ObjectSuffix): ../src/data-sys/file_area_dao.cpp $(IntermediateDirectory)/data-sys_file_area_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/file_area_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_file_area_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_file_area_dao.cpp$(DependSuffix): ../src/data-sys/file_area_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_file_area_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_file_area_dao.cpp$(DependSuffix) -MM "../src/data-sys/file_area_dao.cpp"

$(IntermediateDirectory)/data-sys_file_area_dao.cpp$(PreprocessSuffix): ../src/data-sys/file_area_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_file_area_dao.cpp$(PreprocessSuffix) "../src/data-sys/file_area_dao.cpp"

$(IntermediateDirectory)/data-sys_grouping_dao.cpp$(ObjectSuffix): ../src/data-sys/grouping_dao.cpp $(IntermediateDirectory)/data-sys_grouping_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/grouping_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_grouping_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_grouping_dao.cpp$(DependSuffix): ../src/data-sys/grouping_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_grouping_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_grouping_dao.cpp$(DependSuffix) -MM "../src/data-sys/grouping_dao.cpp"

$(IntermediateDirectory)/data-sys_grouping_dao.cpp$(PreprocessSuffix): ../src/data-sys/grouping_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_grouping_dao.cpp$(PreprocessSuffix) "../src/data-sys/grouping_dao.cpp"

$(IntermediateDirectory)/data-sys_message_area_dao.cpp$(ObjectSuffix): ../src/data-sys/message_area_dao.cpp $(IntermediateDirectory)/data-sys_message_area_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/message_area_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_message_area_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_message_area_dao.cpp$(DependSuffix): ../src/data-sys/message_area_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_message_area_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_message_area_dao.cpp$(DependSuffix) -MM "../src/data-sys/message_area_dao.cpp"

$(IntermediateDirectory)/data-sys_message_area_dao.cpp$(PreprocessSuffix): ../src/data-sys/message_area_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_message_area_dao.cpp$(PreprocessSuffix) "../src/data-sys/message_area_dao.cpp"

$(IntermediateDirectory)/data-sys_network_dao.cpp$(ObjectSuffix): ../src/data-sys/network_dao.cpp $(IntermediateDirectory)/data-sys_network_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/network_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_network_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_network_dao.cpp$(DependSuffix): ../src/data-sys/network_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_network_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_network_dao.cpp$(DependSuffix) -MM "../src/data-sys/network_dao.cpp"

$(IntermediateDirectory)/data-sys_network_dao.cpp$(PreprocessSuffix): ../src/data-sys/network_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_network_dao.cpp$(PreprocessSuffix) "../src/data-sys/network_dao.cpp"

$(IntermediateDirectory)/data-sys_protocol_dao.cpp$(ObjectSuffix): ../src/data-sys/protocol_dao.cpp $(IntermediateDirectory)/data-sys_protocol_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/protocol_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_protocol_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_protocol_dao.cpp$(DependSuffix): ../src/data-sys/protocol_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_protocol_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_protocol_dao.cpp$(DependSuffix) -MM "../src/data-sys/protocol_dao.cpp"

$(IntermediateDirectory)/data-sys_protocol_dao.cpp$(PreprocessSuffix): ../src/data-sys/protocol_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_protocol_dao.cpp$(PreprocessSuffix) "../src/data-sys/protocol_dao.cpp"

$(IntermediateDirectory)/data-sys_access_level_dao.cpp$(ObjectSuffix): ../src/data-sys/access_level_dao.cpp $(IntermediateDirectory)/data-sys_access_level_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/access_level_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_access_level_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_access_level_dao.cpp$(DependSuffix): ../src/data-sys/access_level_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_access_level_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_access_level_dao.cpp$(DependSuffix) -MM "../src/data-sys/access_level_dao.cpp"

$(IntermediateDirectory)/data-sys_access_level_dao.cpp$(PreprocessSuffix): ../src/data-sys/access_level_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_access_level_dao.cpp$(PreprocessSuffix) "../src/data-sys/access_level_dao.cpp"

$(IntermediateDirectory)/data-sys_db_startup.cpp$(ObjectSuffix): ../src/data-sys/db_startup.cpp $(IntermediateDirectory)/data-sys_db_startup.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-sys/db_startup.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-sys_db_startup.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-sys_db_startup.cpp$(DependSuffix): ../src/data-sys/db_startup.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-sys_db_startup.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-sys_db_startup.cpp$(DependSuffix) -MM "../src/data-sys/db_startup.cpp"

$(IntermediateDirectory)/data-sys_db_startup.cpp$(PreprocessSuffix): ../src/data-sys/db_startup.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-sys_db_startup.cpp$(PreprocessSuffix) "../src/data-sys/db_startup.cpp"

$(IntermediateDirectory)/mods_mod_logon.cpp$(ObjectSuffix): ../src/mods/mod_logon.cpp $(IntermediateDirectory)/mods_mod_logon.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/mods/mod_logon.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mods_mod_logon.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/mods_mod_logon.cpp$(DependSuffix): ../src/mods/mod_logon.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/mods_mod_logon.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/mods_mod_logon.cpp$(DependSuffix) -MM "../src/mods/mod_logon.cpp"

$(IntermediateDirectory)/mods_mod_logon.cpp$(PreprocessSuffix): ../src/mods/mod_logon.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/mods_mod_logon.cpp$(PreprocessSuffix) "../src/mods/mod_logon.cpp"

$(IntermediateDirectory)/mods_mod_prelogon.cpp$(ObjectSuffix): ../src/mods/mod_prelogon.cpp $(IntermediateDirectory)/mods_mod_prelogon.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/mods/mod_prelogon.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mods_mod_prelogon.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/mods_mod_prelogon.cpp$(DependSuffix): ../src/mods/mod_prelogon.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/mods_mod_prelogon.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/mods_mod_prelogon.cpp$(DependSuffix) -MM "../src/mods/mod_prelogon.cpp"

$(IntermediateDirectory)/mods_mod_prelogon.cpp$(PreprocessSuffix): ../src/mods/mod_prelogon.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/mods_mod_prelogon.cpp$(PreprocessSuffix) "../src/mods/mod_prelogon.cpp"

$(IntermediateDirectory)/mods_mod_signup.cpp$(ObjectSuffix): ../src/mods/mod_signup.cpp $(IntermediateDirectory)/mods_mod_signup.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/mods/mod_signup.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mods_mod_signup.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/mods_mod_signup.cpp$(DependSuffix): ../src/mods/mod_signup.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/mods_mod_signup.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/mods_mod_signup.cpp$(DependSuffix) -MM "../src/mods/mod_signup.cpp"

$(IntermediateDirectory)/mods_mod_signup.cpp$(PreprocessSuffix): ../src/mods/mod_signup.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/mods_mod_signup.cpp$(PreprocessSuffix) "../src/mods/mod_signup.cpp"

$(IntermediateDirectory)/mods_mod_sys_config.cpp$(ObjectSuffix): ../src/mods/mod_sys_config.cpp $(IntermediateDirectory)/mods_mod_sys_config.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/mods/mod_sys_config.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mods_mod_sys_config.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/mods_mod_sys_config.cpp$(DependSuffix): ../src/mods/mod_sys_config.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/mods_mod_sys_config.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/mods_mod_sys_config.cpp$(DependSuffix) -MM "../src/mods/mod_sys_config.cpp"

$(IntermediateDirectory)/mods_mod_sys_config.cpp$(PreprocessSuffix): ../src/mods/mod_sys_config.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/mods_mod_sys_config.cpp$(PreprocessSuffix) "../src/mods/mod_sys_config.cpp"

$(IntermediateDirectory)/forms_form_system_config.cpp$(ObjectSuffix): ../src/forms/form_system_config.cpp $(IntermediateDirectory)/forms_form_system_config.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/forms/form_system_config.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/forms_form_system_config.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/forms_form_system_config.cpp$(DependSuffix): ../src/forms/form_system_config.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/forms_form_system_config.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/forms_form_system_config.cpp$(DependSuffix) -MM "../src/forms/form_system_config.cpp"

$(IntermediateDirectory)/forms_form_system_config.cpp$(PreprocessSuffix): ../src/forms/form_system_config.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/forms_form_system_config.cpp$(PreprocessSuffix) "../src/forms/form_system_config.cpp"

$(IntermediateDirectory)/data-app_bbs_list_dao.cpp$(ObjectSuffix): ../src/data-app/bbs_list_dao.cpp $(IntermediateDirectory)/data-app_bbs_list_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-app/bbs_list_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-app_bbs_list_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-app_bbs_list_dao.cpp$(DependSuffix): ../src/data-app/bbs_list_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-app_bbs_list_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-app_bbs_list_dao.cpp$(DependSuffix) -MM "../src/data-app/bbs_list_dao.cpp"

$(IntermediateDirectory)/data-app_bbs_list_dao.cpp$(PreprocessSuffix): ../src/data-app/bbs_list_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-app_bbs_list_dao.cpp$(PreprocessSuffix) "../src/data-app/bbs_list_dao.cpp"

$(IntermediateDirectory)/data-app_oneliners_dao.cpp$(ObjectSuffix): ../src/data-app/oneliners_dao.cpp $(IntermediateDirectory)/data-app_oneliners_dao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "../src/data-app/oneliners_dao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/data-app_oneliners_dao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/data-app_oneliners_dao.cpp$(DependSuffix): ../src/data-app/oneliners_dao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/data-app_oneliners_dao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/data-app_oneliners_dao.cpp$(DependSuffix) -MM "../src/data-app/oneliners_dao.cpp"

$(IntermediateDirectory)/data-app_oneliners_dao.cpp$(PreprocessSuffix): ../src/data-app/oneliners_dao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/data-app_oneliners_dao.cpp$(PreprocessSuffix) "../src/data-app/oneliners_dao.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


