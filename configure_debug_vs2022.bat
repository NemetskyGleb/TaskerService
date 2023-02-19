@echo off
REM fetch and compile external dependecys using conan
conan install . --build missing -s build_type=Debug
REM gennerate project using premake5
"./premake/premake5.exe" vs2022