set pkg=python3
set pkg=%pkg%,curl
set pkg=%pkg%,zip
set pkg=%pkg%,openssh
set pkg=%pkg%,wget
set pkg=%pkg%,lynx

set cachedir=%~dp0tmp_cache

@rem --quite-mode
%~dp0bin\setup-x86.exe --packages %pkg% --no-startmenu --no-desktop --download -L -l "%cachedir%" -R "%~dp0cygwin32" -C Base

@rem rmdir /S /Q "%cachedir%"
