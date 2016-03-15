##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=xrm-unittest
ConfigurationName      :=Debug
WorkspacePath          := "C:\Users\Blue\Desktop\Test2"
ProjectPath            := "C:\Users\Blue\Desktop\Test2\xrm-unittest"
IntermediateDirectory  :=Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Blue
Date                   :=3/13/2016
CodeLitePath           :="C:\Program Files (x86)\CodeLite"
LinkerName             :=C:/MinGW-5.1.0/mingw32/bin/g++.exe
SharedObjectLinkerName :=C:/MinGW-5.1.0/mingw32/bin/g++.exe -shared -fPIC
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
ObjectsFileList        :="xrm-unittest.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/MinGW-5.1.0/mingw32/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)../src $(IncludeSwitch)C:/UnitTest++-1.3/src $(IncludeSwitch)C:/boost/include/boost-1_58 $(IncludeSwitch)C:/boost_1_58_0/boost $(IncludeSwitch)C:/boost/include $(IncludeSwitch)C:/Users/Blue/Desktop/Test2/sqlitewrap $(IncludeSwitch)C:/sqlite3/include $(IncludeSwitch)C:/OpenSSL-Win32/include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)boost_system-mgw51-mt-1_58 $(LibrarySwitch)boost_thread-mgw51-mt-1_58 $(LibrarySwitch)boost_chrono-mgw51-mt-1_58 $(LibrarySwitch)boost_serialization-mgw51-mt-1_58 $(LibrarySwitch)boost_locale-mgw51-mt-1_58 $(LibrarySwitch)boost_filesystem-mgw51-mt-1_58 $(LibrarySwitch)boost_timer-mgw51-mt-1_58 $(LibrarySwitch)boost_regex-mgw51-mt-1_58 $(LibrarySwitch)ws2_32 $(LibrarySwitch)wsock32 $(LibrarySwitch)iconv $(LibrarySwitch)icuuc.dll $(LibrarySwitch)icuin.dll $(LibrarySwitch)SqliteWrapped $(LibrarySwitch)sqlite3 $(LibrarySwitch)UnitTest++ $(LibrarySwitch)ssleay32 $(LibrarySwitch)eay32 
ArLibs                 :=  "libboost_system-mgw51-mt-1_58" "libboost_thread-mgw51-mt-1_58" "libboost_chrono-mgw51-mt-1_58" "libboost_serialization-mgw51-mt-1_58" "libboost_locale-mgw51-mt-1_58" "libboost_filesystem-mgw51-mt-1_58" "libboost_timer-mgw51-mt-1_58" "libboost_regex-mgw51-mt-1_58" "libws2_32.a" "libwsock32.a" "libiconv.a" "libicuuc.dll.a" "libicuin.dll.a" "libSqliteWrapped.a" "libsqlite3.a" "libUnitTest++.a" "ssleay32.a" "libeay32.a" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch). $(LibraryPathSwitch)../src $(LibraryPathSwitch)C:/boost/lib $(LibraryPathSwitch)C:/msys/1.0/icu/source/lib $(LibraryPathSwitch)C:/Users/Blue/Desktop/Test2/sqlitewrap/Debug $(LibraryPathSwitch)C:/sqlite3/lib $(LibraryPathSwitch)C:/UnitTest++-1.3/Debug $(LibraryPathSwitch)C:/OpenSSL-Win32/lib/MinGW $(LibraryPathSwitch)C:/OpenSSL-Win32/lib/ 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/MinGW-5.1.0/mingw32/bin/ar.exe rcu
CXX      := C:/MinGW-5.1.0/mingw32/bin/g++.exe
CC       := C:/MinGW-5.1.0/mingw32/bin/gcc.exe
CXXFLAGS :=  -g -std=c++11 -Wno-deprecated -Wno-unused-local-typedefs $(Preprocessors)
CFLAGS   :=  -g -std=c++11 -Wno-deprecated -Wno-unused-local-typedefs $(Preprocessors)
ASFLAGS  := 
AS       := C:/MinGW-5.1.0/mingw32/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files (x86)\CodeLite
UNIT_TEST_PP_SRC_DIR:=C:\UnitTest++-1.3
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/common_io.cpp$(ObjectSuffix) $(IntermediateDirectory)/common_io_ut.cpp$(ObjectSuffix) $(IntermediateDirectory)/session_io_ut.cpp$(ObjectSuffix) $(IntermediateDirectory)/session_io.cpp$(ObjectSuffix) $(IntermediateDirectory)/broad_caster.cpp$(ObjectSuffix) $(IntermediateDirectory)/ansi_processor_ut.cpp$(ObjectSuffix) $(IntermediateDirectory)/ansi_processor.cpp$(ObjectSuffix) $(IntermediateDirectory)/users_dao_ut.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Blue/Desktop/Test2/xrm-unittest/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM "main.cpp"

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) "main.cpp"

$(IntermediateDirectory)/common_io.cpp$(ObjectSuffix): ../src/common_io.cpp $(IntermediateDirectory)/common_io.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Blue/Desktop/Test2/src/common_io.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/common_io.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/common_io.cpp$(DependSuffix): ../src/common_io.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/common_io.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/common_io.cpp$(DependSuffix) -MM "../src/common_io.cpp"

$(IntermediateDirectory)/common_io.cpp$(PreprocessSuffix): ../src/common_io.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/common_io.cpp$(PreprocessSuffix) "../src/common_io.cpp"

$(IntermediateDirectory)/common_io_ut.cpp$(ObjectSuffix): common_io_ut.cpp $(IntermediateDirectory)/common_io_ut.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Blue/Desktop/Test2/xrm-unittest/common_io_ut.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/common_io_ut.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/common_io_ut.cpp$(DependSuffix): common_io_ut.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/common_io_ut.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/common_io_ut.cpp$(DependSuffix) -MM "common_io_ut.cpp"

$(IntermediateDirectory)/common_io_ut.cpp$(PreprocessSuffix): common_io_ut.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/common_io_ut.cpp$(PreprocessSuffix) "common_io_ut.cpp"

$(IntermediateDirectory)/session_io_ut.cpp$(ObjectSuffix): session_io_ut.cpp $(IntermediateDirectory)/session_io_ut.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Blue/Desktop/Test2/xrm-unittest/session_io_ut.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/session_io_ut.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/session_io_ut.cpp$(DependSuffix): session_io_ut.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/session_io_ut.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/session_io_ut.cpp$(DependSuffix) -MM "session_io_ut.cpp"

$(IntermediateDirectory)/session_io_ut.cpp$(PreprocessSuffix): session_io_ut.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/session_io_ut.cpp$(PreprocessSuffix) "session_io_ut.cpp"

$(IntermediateDirectory)/session_io.cpp$(ObjectSuffix): ../src/session_io.cpp $(IntermediateDirectory)/session_io.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Blue/Desktop/Test2/src/session_io.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/session_io.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/session_io.cpp$(DependSuffix): ../src/session_io.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/session_io.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/session_io.cpp$(DependSuffix) -MM "../src/session_io.cpp"

$(IntermediateDirectory)/session_io.cpp$(PreprocessSuffix): ../src/session_io.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/session_io.cpp$(PreprocessSuffix) "../src/session_io.cpp"

$(IntermediateDirectory)/broad_caster.cpp$(ObjectSuffix): ../src/broad_caster.cpp $(IntermediateDirectory)/broad_caster.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Blue/Desktop/Test2/src/broad_caster.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/broad_caster.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/broad_caster.cpp$(DependSuffix): ../src/broad_caster.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/broad_caster.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/broad_caster.cpp$(DependSuffix) -MM "../src/broad_caster.cpp"

$(IntermediateDirectory)/broad_caster.cpp$(PreprocessSuffix): ../src/broad_caster.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/broad_caster.cpp$(PreprocessSuffix) "../src/broad_caster.cpp"

$(IntermediateDirectory)/ansi_processor_ut.cpp$(ObjectSuffix): ansi_processor_ut.cpp $(IntermediateDirectory)/ansi_processor_ut.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Blue/Desktop/Test2/xrm-unittest/ansi_processor_ut.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ansi_processor_ut.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ansi_processor_ut.cpp$(DependSuffix): ansi_processor_ut.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ansi_processor_ut.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/ansi_processor_ut.cpp$(DependSuffix) -MM "ansi_processor_ut.cpp"

$(IntermediateDirectory)/ansi_processor_ut.cpp$(PreprocessSuffix): ansi_processor_ut.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ansi_processor_ut.cpp$(PreprocessSuffix) "ansi_processor_ut.cpp"

$(IntermediateDirectory)/ansi_processor.cpp$(ObjectSuffix): ../src/ansi_processor.cpp $(IntermediateDirectory)/ansi_processor.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Blue/Desktop/Test2/src/ansi_processor.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ansi_processor.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ansi_processor.cpp$(DependSuffix): ../src/ansi_processor.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ansi_processor.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/ansi_processor.cpp$(DependSuffix) -MM "../src/ansi_processor.cpp"

$(IntermediateDirectory)/ansi_processor.cpp$(PreprocessSuffix): ../src/ansi_processor.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ansi_processor.cpp$(PreprocessSuffix) "../src/ansi_processor.cpp"

$(IntermediateDirectory)/users_dao_ut.cpp$(ObjectSuffix): users_dao_ut.cpp $(IntermediateDirectory)/users_dao_ut.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Blue/Desktop/Test2/xrm-unittest/users_dao_ut.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/users_dao_ut.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/users_dao_ut.cpp$(DependSuffix): users_dao_ut.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/users_dao_ut.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/users_dao_ut.cpp$(DependSuffix) -MM "users_dao_ut.cpp"

$(IntermediateDirectory)/users_dao_ut.cpp$(PreprocessSuffix): users_dao_ut.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/users_dao_ut.cpp$(PreprocessSuffix) "users_dao_ut.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r Debug/

