
How to commit cygwin tar ball
-----------------------------
+ run "make_zip.bat" so that cygwin64.zip.xxx(xxx is 001, 002, ...) will be made.
+ commit and push them

How to download cygwin64.zip.XXX and unarchive it?
--------------------------------------------------
```bat
copy /b cygwin64.zip.* cygwin64.zip
```

How modules are installed ?
---------------------------

This project manages cygwin modules. Cygwin modules are installed by following ways.
 
- A. via installer(deprecated. don't use it.)
- B. via apt-cyg
- C. via easy_install
- D. via pip
- E. via wget and install manually

How to install modules
----------------------

- run setup_x86.bat to install cygwin modules(installed modules are described in setup_x86.bat)
 
- apt-cyg(Please skip all apt-cyg part as apt-cyg is not actively maintained. so use setup_x86.bat for installing further modules)
```
# install apt-cyg
git config --global core.autocrlf false
#this site is closed. git clone https://github.com/transcode-open/apt-cyg.git
git clone https://github.com/kou1okada/apt-cyg.git
install -m 755 apt-cyg/apt-cyg /usr/bin/
apt-cyg --version
rm -rf apt-cyg

apt-cyg -X -m ftp://ftp.iij.ad.jp/pub/cygwin/ update
apt-cyg -X install gnupg
#apt-cyg install python python-devel python-crypto python-paramiko python-setuptools
apt-cyg install python3 python3-devel python3-crypto python3-paramiko python3-setuptools
apt-cyg install make gcc-core gcc-g++
apt-cyg install libyaml-devel libffi-devel openssl-devel
# this is for pip install mysql-python
apt-cyg install libmysqlclient-devel
apt-cyg install mysql
apt-cyg install perl
```

- pip3
```
wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
pip3 --version
rm get-pip.py

#if you see "address space needed" error , run rebaseall -v on ash.exe
pip3 install boto3
pip3 install mysqlclient
#mysql-python does not support python3 so use mysqlclient instead.(ConfigParser is not found error)

pip3 install pyvmomi
pip3 install awscli
pip3 install cffi
# NOTE : ansible install takes very long time(about 30mins)
pip3 install ansible

# NOTE : it's bat idea to install jupyter in cygwin. just use Anaconda. 
# if you see "gcc: error: spawn: No such file or directory" install gcc-g++ not gcc-c++ !
#pip3 install numpy
#pip3 install chainer
#pip3 install jupyter
```

- jq(downloaded)
  ```
  cd win32
  wget https://github.com/stedolan/jq/releases/download/jq-1.5/jq-win32.exe
  chmod +x *.exe
  ```
- terraform(downloaded) with aws plugin in cygwin64/terraform-sample-aws/.terraform and vsphere plugin in cygwin64/terraform-sample-vsphere/.terraform 
- packer(downloaded)
- connect(downloaded)
