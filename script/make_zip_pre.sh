echo removing pyc files...
/bin/find cygwin64/lib -name "*.pyc" | xargs rm -f
rm -rf   cygwin64/home
rm -rf   cygwin64/tmp
mkdir -p cygwin64/tmp

/bin/find cygwin32/lib -name "*.pyc" | xargs rm -f
rm -rf   cygwin32/home
rm -rf   cygwin32/tmp
mkdir -p cygwin32/tmp
