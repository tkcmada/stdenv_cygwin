echo removing pyc files...
/bin/find cygwin64/lib -name "*.pyc" | xargs rm -f
#rm -rf   cygwin64/tmp cygwin64/home
#mkdir -p cygwin64/tmp cygwin64/home

/bin/find cygwin32/lib -name "*.pyc" | xargs rm -f
#rm -rf   cygwin32/tmp cygwin32/home
#mkdir -p cygwin32/tmp cygwin32/home
