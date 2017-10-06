@echo off
cd %~dp0
%~dp0cygwin64\bin\bash.exe script\make_zip_pre.sh
del /Q cygwin64.zip.*
"%~dp07-zip\7z.exe" a -tzip -v90m cygwin64.zip cygwin64
IF ERRORLEVEL 1 (
  echo error occured
  pause
  exit 1
)
