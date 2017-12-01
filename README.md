How to commit cygwin tar ball
-----------------------------
+ run "make_zip.bat" so that cygwin64.zip.xxx(xxx is 001, 002, ...) will be made.
+ commit and push them

How to download cygwin64.zip.XXX and unarchive it?
--------------------------------------------------
```bat
copy /b cygwin64.zip.* cygwin64.zip
```

Installed modules
-----------------

- wget, lynx ( via installer )
- python
- python-devel
- python-crypto
- python-paramiko
- python-setuptools
- gcc-core
- gcc-g++
- make
- openssh
- libyaml-devel
- libffi-devel
- openssl-devel
- easy_install(wget)
- pip(via easy_install)
- ansible(pip)
- boto(pip)
- boto3(pip)
- terraform(downloaded) with aws plugin in cygwin64/terraform-sample-aws/.terraform and vsphere plugin in cygwin64/terraform-sample-vsphere/.terraform 
- packer(downloaded)
- awscli(pip)
- pyvmpmi(pip)

How modules are installed ?
---------------------------

This project manages cygwin modules. Cygwin modules are installed by following ways.
 
- A. via installer(deprecated. don't use it.)
- B. via apt-cyg
- C. via easy_install
- D. via pip
- E. via wget and install manually

B. How to add package via apt-cyg
------------------------------
+ clone this repository
+ start_bash.bat
+ install via apt-cyg
```
apt-cyg update
apt-cyg xxx
```

Tips
----

- How to install apt-cyg itself.

```
git config --global core.autocrlf false
git clone https://github.com/transcode-open/apt-cyg.git
install -m 755 apt-cyg/apt-cyg /usr/bin/
apt-cyg --help
```

- How to install easy_install and pip itself.

```
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py 
pytho ez_setup.py
easy_install pip
```
