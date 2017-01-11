set pkg=python3
set pkg=%pkg%,curl
set pkg=%pkg%,make
set cachedir=%~dp0tmp_cache

%~dp0bin\setup-x86_64.exe --packages %pkg% --quiet-mode --no-startmenu --no-desktop --download -L -l "%cachedir%" -R "%~dp0cygwin64" -C Base

@rem rmdir /S /Q "%cachedir%"
