@echo off
cls
echo =================================
echo               Start
echo =================================

REM Проверяем существует ли exe
if not exist ".\out\build\x64-Release\RayTracer.exe" (
    echo Building for the first time...
    "G:\Apps\Microsoft_Visual_Studio\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe" -B out\build\x64-Release -S .
)

echo Building...
"G:\Apps\Microsoft_Visual_Studio\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe" --build out\build\x64-Release --config Release

echo Starting...
.\out\build\x64-Debug\RayTracer.exe

echo =================================
echo               Done
echo =================================
pause