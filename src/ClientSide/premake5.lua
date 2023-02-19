-- ClientSide Project
project "ClientSide"
    kind "ConsoleApp"
    language "C++"
    targetdir "../../bin/%{cfg.buildcfg}"
    objdir "../../bin/%{cfg.buildcfg}/obj/"

    linkoptions { conan_exelinkflags }

    links { "ConfigurationParsing" }

    includedirs { "../include" }

    vpaths {
        ["Headers"] = "../include/ClientSide/**.h",
        ["Sources"] = "**.cpp",
    }

    files { "../include/ClientSide/**.h", "**.cpp" }

    filter "configurations:Debug"
    defines { "DEBUG" }
    symbols "On"

    filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "On"