
# Python download
```sh
$ wget "https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tgz"
```

# Decompress tgz
```sh
tar -xvf Python-2.7.15.tgz
```

# Python install
python install in /home/$USER/local:
```sh
$ ./configure --prefix=/home/$USER/local
$ make install
```
you can python install path using --prefix optin

# Set Environment (python path)
you must write this script in ~/.bashrc:
```sh
export PATH=/home/$USER/local/bin:$PATH
```

# Install pip 
```sh
$ yum install python-backports-1.0-8.el7.x86_64.rpm
$ yum install python-backports-ssl_match_hostname-3.5.0.1-1.el7.noarch.rpm
$ yum install python-ipaddress-1.0.16-2.el7.noarch.rpm
$ yum install python-setuptools-0.9.8-7.el7.noarch.rpm
$ yum install python2-pip-8.1.2-10.el7.noarch.rpm
```

# install ansible
```sh
$ pip install -user cffi-1.14.1-cp27-cp27mu-manylinux1_x86_64.whl
$ pip install -user cryptography-3.0-cp27-cp27mu-manylinux1_x86_64.whl
$ pip install -user enum34-1.1.10-py2-none-any.whl
$ pip install -user ipaddress-1.0.23-py2.py3-none-any.whl
$ pip install -user Jinja2-2.11.2-py2.py3-none-any.whl
$ pip install -user MarkupSafe-1.1.1-cp27-cp27mu-manylinux1_x86_64.whl
$ pip install -user pycparser-2.20-py2.py3-none-any.whl
$ pip install -user six-1.15.0-py2.py3-none-any.whl
$ pip install -user PyYAML-5.3.1.tar.gz
$ pip install -user ansible-2.9.11.tar.gz
```

# reference 
https://hiseon.me/python/linux-python-install/

