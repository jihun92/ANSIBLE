# README
- Tartget OS is CentOS 7.x
- Python version 2.7.x to install

# If not installed python
- Download Python
```sh
$ wget "https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tgz"
```
- Decompress tgz
```sh
$ tar -xvf /ansible/install/python/Python-2.7.15.tgz
```
- Python install in /home/$USER/local
- you can python install path using --prefix optin
```sh
$ cd /ansible/install/python/Python-2.7.15
$ ./configure --prefix=/home/$USER/local
$ make install
```

- Set Environment (python path)
- you must write this script in ~/.bashrc
```sh
export PATH=/home/$USER/local/bin:$PATH
```

# Install pip and dependence whl
install pip and pip dependence whl
```sh
$ cd /ansible/install/python/whl/pip
$ python pip-20.2.3-py2.py3-none-any.whl/pip install --user pip-20.2.3-py2.py3-none-any.whl
$ . install_dependency.sh
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

# Install ansible
```sh
$ cd /ansible/install/ansible/ansible-2.7.11
$ . install_ansible.sh
```

in install_ansible.sh 
```sh
pip install --user --no-deps ./dependency_whl/enum34-1.1.10-py2-none-any.whl
pip install --user --no-deps ./dependency_whl/ipaddress-1.0.23-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/Jinja2-2.11.2-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/pycparser-2.20-py2.py3-none-any.whl
pip install --user --no-deps ./dependency_whl/PyYAML-5.3.1.tar.gz
pip install --user --no-deps ./dependency_whl/six-1.15.0-py2.py3-none-any.whl

pip install --user --no-deps ./dependency_whl/mu/MarkupSafe-1.1.1-cp27-cp27mu-manylinux1_x86_64.whl
pip install --user --no-deps ./dependency_whl/mu/PyNaCl-1.4.0-cp27-cp27mu-manylinux1_x86_64.whl
pip install --user --no-deps ./dependency_whl/mu/bcrypt-3.1.7-cp27-cp27mu-manylinux1_x86_64.whl
pip install --user --no-deps ./dependency_whl/mu/cffi-1.14.3-cp27-cp27mu-manylinux1_x86_64.whl
pip install --user --no-deps ./dependency_whl/mu/cryptography-3.1-cp27-cp27mu-manylinux2010_x86_64.whl

# pip install
pip install --user --no-deps ./dependency_whl/paramiko-2.7.2-py2.py3-none-any.whl

# ansible install
pip install --user ansible-2.9.11.tar.gz
```

# Result

installation path of ansible
```sh
[vagrant@ansible-server ansible]$ ansible --version
ansible 2.9.11
  config file = None
  configured module search path = [u'/home/vagrant/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /home/vagrant/.local/lib/python2.7/site-packages/ansible
  executable location = /home/vagrant/.local/bin/ansible
  python version = 2.7.5 (default, Apr  2 2020, 13:16:51) [GCC 4.8.5 20150623 (Red Hat 4.8.5-39)]
```

installation path of pip and whl
```sh
[vagrant@ansible-server site-packages]$ pwd && ll
/home/vagrant/.local/lib/python2.7/site-packages
total 1080
drwxrwxr-x. 17 vagrant vagrant   4096 Sep 23 08:36 ansible
drwxrwxr-x.  2 vagrant vagrant    142 Sep 23 08:36 ansible-2.9.11.dist-info
drwxrwxr-x.  5 vagrant vagrant     89 Sep 23 08:36 ansible_test
drwxrwxr-x.  2 vagrant vagrant    133 Sep 23 08:32 certifi
drwxrwxr-x.  2 vagrant vagrant    142 Sep 23 08:32 certifi-2020.6.20.dist-info
drwxrwxr-x.  2 vagrant vagrant   4096 Sep 23 08:34 cffi
drwxrwxr-x.  2 vagrant vagrant    166 Sep 23 08:34 cffi-1.14.3.dist-info
-rwxrwxr-x.  1 vagrant vagrant 808496 Sep 23 08:34 _cffi_backend.so
drwxrwxr-x.  2 vagrant vagrant     38 Sep 23 08:34 cffi.libs
drwxrwxr-x.  3 vagrant vagrant   4096 Sep 23 08:32 chardet
drwxrwxr-x.  2 vagrant vagrant    195 Sep 23 08:32 chardet-3.0.4.dist-info
drwxrwxr-x.  4 vagrant vagrant    223 Sep 23 08:34 cryptography
drwxrwxr-x.  2 vagrant vagrant    221 Sep 23 08:34 cryptography-3.1.dist-info
drwxrwxr-x.  2 vagrant vagrant     84 Sep 23 08:34 download
drwxrwxr-x.  2 vagrant vagrant    127 Sep 23 08:34 download-0.3.5.dist-info
-rw-rw-r--.  1 vagrant vagrant    126 Sep 23 08:33 easy_install.py
-rw-rw-r--.  1 vagrant vagrant    331 Sep 23 08:33 easy_install.pyc
drwxrwxr-x.  2 vagrant vagrant     74 Sep 23 08:34 enum
drwxrwxr-x.  2 vagrant vagrant    127 Sep 23 08:34 enum34-1.1.10.dist-info
drwxrwxr-x.  2 vagrant vagrant   4096 Sep 23 08:32 idna
drwxrwxr-x.  2 vagrant vagrant    146 Sep 23 08:32 idna-2.10.dist-info
drwxrwxr-x.  2 vagrant vagrant    146 Sep 23 08:35 ipaddress-1.0.23.dist-info
-rw-rw-r--.  1 vagrant vagrant  79875 Sep 23 08:35 ipaddress.py
-rw-rw-r--.  1 vagrant vagrant  78607 Sep 23 08:35 ipaddress.pyc
drwxrwxr-x.  2 vagrant vagrant   4096 Sep 23 08:35 jinja2
drwxrwxr-x.  2 vagrant vagrant    170 Sep 23 08:35 Jinja2-2.11.2.dist-info
drwxrwxr-x.  2 vagrant vagrant    201 Sep 23 08:35 markupsafe
drwxrwxr-x.  2 vagrant vagrant    146 Sep 23 08:35 MarkupSafe-1.1.1.dist-info
drwxrwxr-x.  4 vagrant vagrant    116 Sep 23 08:32 pip
drwxrwxr-x.  2 vagrant vagrant    170 Sep 23 08:32 pip-20.2.3.dist-info
drwxrwxr-x.  4 vagrant vagrant    117 Sep 23 08:33 pkg_resources
drwxrwxr-x.  3 vagrant vagrant   4096 Sep 23 08:35 pycparser
drwxrwxr-x.  2 vagrant vagrant    142 Sep 23 08:35 pycparser-2.20.dist-info
drwxrwxr-x.  2 vagrant vagrant    142 Sep 23 08:35 PyYAML-5.3.1.dist-info
drwxrwxr-x.  2 vagrant vagrant   4096 Sep 23 08:33 requests
drwxrwxr-x.  2 vagrant vagrant    190 Sep 23 08:33 requests-2.24.0.dist-info
drwxrwxr-x.  5 vagrant vagrant   4096 Sep 23 08:33 setuptools
drwxrwxr-x.  2 vagrant vagrant    210 Sep 23 08:33 setuptools-44.1.1.dist-info
drwxrwxr-x.  2 vagrant vagrant    142 Sep 23 08:33 six-1.15.0.dist-info
-rw-rw-r--.  1 vagrant vagrant  34159 Sep 23 08:33 six.py
-rw-rw-r--.  1 vagrant vagrant  34430 Sep 23 08:33 six.pyc
drwxrwxr-x.  3 vagrant vagrant   4096 Sep 23 08:33 tqdm
drwxrwxr-x.  2 vagrant vagrant    166 Sep 23 08:33 tqdm-4.49.0.dist-info
drwxrwxr-x.  5 vagrant vagrant   4096 Sep 23 08:33 urllib3
drwxrwxr-x.  2 vagrant vagrant    146 Sep 23 08:33 urllib3-1.25.10.dist-info
drwxrwxr-x.  4 vagrant vagrant   4096 Sep 23 08:33 wheel
drwxrwxr-x.  2 vagrant vagrant    170 Sep 23 08:33 wheel-0.35.1.dist-info
drwxrwxr-x.  2 vagrant vagrant   4096 Sep 23 08:35 yaml
```

# reference 
https://hiseon.me/python/linux-python-install/

