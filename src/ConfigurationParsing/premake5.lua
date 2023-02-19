    -- ConfigurationParsing Project
    project "ConfigurationParsing"
        kind "StaticLib"
        language "C++"
        targetdir "../../bin/%{cfg.buildcfg}"
        objdir "../../bin/%{cfg.buildcfg}/obj/"

        linkoptions { conan_exelinkflags }
        
        includedirs { "../include"}

        vpaths {
            ["Headers"] = "../include/ConfigurationParsing/**.h",
            ["Sources"] = "**.cpp",
        }

        files { "../include/ConfigurationParsing/**.h", "**.cpp" }

        filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

        filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"