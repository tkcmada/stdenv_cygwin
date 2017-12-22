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

- via installer(installer should only minimum required modules)
 - python3, wget, lynx, openssh, curl, zip
 
- apt-cyg
```
# install apt-cyg
git config --global core.autocrlf false
git clone https://github.com/transcode-open/apt-cyg.git
install -m 755 apt-cyg/apt-cyg /usr/bin/
apt-cyg --version
rm -rf apt-cyg

apt-cyg -m ftp://ftp.iij.ad.jp/pub/cygwin/ update
apt-cyg install python python-devel python-crypto python-paramiko python-setuptools
apt-cyg install make gcc-core gcc-g++
apt-cyg install libyaml-devel libffi-devel openssl-devel

# To solve an error while "pip install ansible" causes "Resource temporarily unavailable while executing command python setup.py egg_info"
apt-cyg install rebaseall
```

- pip
```
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
pip --version
rm get-pip.py

pip install ansible
pip install boto boto3 awscli
pip install pyvmomi
pip install jupyter
```

- terraform(downloaded) with aws plugin in cygwin64/terraform-sample-aws/.terraform and vsphere plugin in cygwin64/terraform-sample-vsphere/.terraform 
- packer(downloaded)

