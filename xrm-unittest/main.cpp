/**
 *   Oblivion/2 XRM - UNIT TESTS
 *   Copyright (C) 2015 by Michael Griffin
 */

//#include "CommonIO_Test.hpp"
//#include "StandardIO_Test.hpp"

#include <unittest++/UnitTest++.h>

// C Standard
#include <cstdio>
#include <cstring>
// C++ Standard
#include <iostream>
#include <string>
#include <vector>
#include <stdexcept>


/*
 * These Unit Tests are To test the core logic of classes and methods.
 * Any method that hit IO, Database, File, Network, is considered an Integration Test
 * and will be setup in seperate Tests Suite or done manaully through the interface.
 */


// run all unit tests
int main(int argc, char **argv)
{
    return UnitTest::RunAllTests();
}
