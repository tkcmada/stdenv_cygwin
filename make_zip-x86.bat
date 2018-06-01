@echo off
cd %~dp0
set PATH=%~dp0cygwin32\bin;%PATH%
call pre_make_zip.bat
del /Q cygwin32.zip.*
"%~dp07-zip\7z.exe" a -tzip -v90m cygwin32.zip cygwin32
IF ERRORLEVEL 1 (
  echo error occured
  pause
  exit 1
)
