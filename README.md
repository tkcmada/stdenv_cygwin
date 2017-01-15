How to install cygwin
---------------------
+ run "install_cygwin.bat"
+ Choose a Download site if asked.
+ All necessary packages are selected. Just press "Next" to move forward.
+ cygwin package will be downloaded into cygwin64 dir.
+ temporary files are downloaded into tmp_cache so please delete it.

How to commit cygwin dir
------------------------
+ run "make_zip.bat" so that cygwin64.jar.xxx(xxx is 001, 002, ...) will be made.
+ commit and push them.
+ To decompress, run "concat.bat" so that cygwin64.dir will be copied from cygwin64.jar.xxx

How to add package
------------------
+ add package name to "install_cygwin.bat" and rerun it.
