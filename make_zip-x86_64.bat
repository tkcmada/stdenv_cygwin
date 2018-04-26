@echo off
cd %~dp0
call pre_make_zip.bat
del /Q cygwin64.zip.*
"%~dp07-zip\7z.exe" a -ax@exclude.txt -tzip -v90m cygwin64.zip cygwin64
IF ERRORLEVEL 1 (
  echo error occured
  pause
  exit 1
)
