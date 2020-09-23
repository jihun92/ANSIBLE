# README
- Tartget OS is CentOS 7.x
- Python version 2.7.x to install

# Download Python 
```sh
$ wget "https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tgz"
```

# Decompress tgz
```sh
$ tar -xvf /ansible/install/python/Python-2.7.15.tgz
```

# Python install
python install in /home/$USER/local:
```sh
$ cd /ansible/install/python/Python-2.7.15
$ ./configure --prefix=/home/$USER/local
$ make install
```
you can python install path using --prefix optin

# Set Environment (python path)
you must write this script in ~/.bashrc:
```sh
export PATH=/home/$USER/local/bin:$PATH
```

# Install pip and dependence whl
install pip and pip dependence whl
```sh
$ cd /ansible/install/python/pip
$ python pip-20.2.3-py2.py3-none-any.whl/pip install --user pip-20.2.3-py2.py3-none-any.whl
$ install_dependency.sh
```

in install_dependency.sh 
```sh
pip install --user --no-deps ./dependency_whl/certifi-2020.6.20-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/chardet-3.0.4-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/idna-2.10-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/requests-2.24.0-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/setuptools-44.1.1-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/six-1.15.0-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/tqdm-4.49.0-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/urllib3-1.25.10-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/wheel-0.35.1-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/download-0.3.5.tar.gz
```

# install ansible
```sh
$ cd /ansible/install/ansible
$ install_ansible.sh
```

in install_ansible.sh 
```sh
pip install --user --no-deps ./dependency_whl/cffi-1.14.3-cp27-cp27mu-manylinux1_x86_64.whl
pip install --user --no-deps ./dependency_whl/cryptography-3.1-cp27-cp27mu-manylinux2010_x86_64.whl
pip install --user --no-deps ./dependency_whl/enum34-1.1.10-py2-none-any.whl
pip install --user --no-deps ./dependency_whl/ipaddress-1.0.23-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/MarkupSafe-1.1.1-cp27-cp27mu-manylinux1_x86_64.whl
pip install --user --no-deps ./dependency_whl/Jinja2-2.11.2-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/pycparser-2.20-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/PyYAML-5.3.1.tar.gz
pip install --user --no-deps ./dependency_whl/six-1.15.0-py2.py3-none-any.whl
pip install --user --no-deps ansible-2.9.11.tar.gz
```

# reference 
https://hiseon.me/python/linux-python-install/

