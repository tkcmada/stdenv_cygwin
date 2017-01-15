@echo off
cd %~dp0
"%~dp07-zip\7z.exe" a -tzip -v90m cygwin64.jar cygwin64
IF ERRORLEVEL 1 (
  echo error occured
  pause
  exit 1
)
