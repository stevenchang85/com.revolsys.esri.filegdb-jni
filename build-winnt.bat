@echo off
set VSINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community

set PATH=%VSINSTALLDIR%\Common7\IDE;%PATH%
set PATH=%VSINSTALLDIR%\VC\Tools\MSVC\14.10.25017\bin\HostX64\x64;%PATH%

if not exist "target\classes\natives\windows_64\" (
  md target\classes\natives\windows_64
)

nmake ARCH=x86_64 /f Makefile.nmake
