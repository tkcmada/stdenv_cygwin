cd %~dp0
bin\setup-x86.exe ^
   --root %~dp0cygwin32 ^
   --local-package-dir %CD% ^
   --site http://ftp.iij.ad.jp/pub/cygwin/ ^
   --quiet-mode ^
   --packages "unzip,jq,python,python-devel,python-crypto,python-paramiko,python-setuptools,python3,python3-devel,python3-crypto,python3-paramiko,python3-setuptools,gnupg,gcc,gcc-core,gcc-g++,git,make,patch,libncurses-devel,openssl-devel,readline,libsqlite3-devel,libxml2-devel,libxslt-devel,wget,vim,screen,Tcl,libyaml-devel,libffi-devel,openssl-devel,libmysqlclient-devel,perl,mysql"
