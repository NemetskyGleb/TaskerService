-- Include conan gennerate script
include("conanbuildinfo.premake.lua")

-- Main Workspace
workspace "TaskerService"
    -- Import conan generate config
    conan_basic_setup()

    ClientSideDefaultFolder = "src/ClientSide"
    ConfigurationParsingDefaultFolder = "src/ConfigurationParsing"

    include "src/ClientSide"
    include "src/ConfigurationParsing"