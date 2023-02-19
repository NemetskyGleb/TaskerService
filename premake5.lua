-- Include conan gennerate script
include("conanbuildinfo.premake.lua")

-- Main Workspace
workspace "TaskerService"
    -- Import conan gennerate config
    conan_basic_setup()

    -- Project
    project "tasker_service"
        kind "ConsoleApp"
        language "C++"
        targetdir "bin/%{cfg.buildcfg}"
		objdir "bin/%{cfg.buildcfg}/obj/"
		location "src"
        debugdir "result"

        linkoptions { conan_exelinkflags }

        files { "**.h", "**.cpp" }

        filter "configurations:Debug"
		defines { "DEBUG" }
		symbols "On"

		filter "configurations:Release"
		defines { "NDEBUG" }
		optimize "On"