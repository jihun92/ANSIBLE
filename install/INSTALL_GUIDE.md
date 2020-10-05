# README

- Tartget OS is CentOS 7.x
- Python version 2.7.5 to install

# installed python

- install Python:

```sh
$ cd /home/$USER/ansible/install/python/python-2.7.5
$ tar xvf Python-2.7.5.tgz
$ cd Python-2.7.5
$ ./configure --enable-unicode=ucs4 --prefix=/home/$USER/local/python
$ make && make install
```

- Python install in /home/$USER/local/python
- you can change path of python using --prefix option
- Set Environment (python path) :

```sh
$ echo 'export PATH=/home/$USER/local/python/bin:$PATH' >> /home/$USER/.bashrc
$ source ~/.bashrc
```

# Install pip and dependence whl

install pip and pip dependence whl

```sh
$ cd /home/$USER/ansible/install/python/pip-20.2.3/whl
$ sh install_pip.sh
```

# Install ansible

```sh
$ cd /home/$USER/ansible/install/ansible/ansible-2.7.8
$ sh install.sh
```

# Result

installation path of ansible

```sh
$ ansible --version
ansible 2.7.8
  config file = None
  configured module search path = [u'/home/ansible/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /home/ansible/local/python/lib/python2.7/site-packages/ansible
  executable location = /home/ansible/local/python/bin/ansible
  python version = 2.7.5 (default, Oct  5 2020, 07:54:27) [GCC 4.8.5 20150623 (Red Hat 4.8.5-39)]
```

installation path of pip and whl

```sh
$ cd /home/$USER/local/python/lib/python2.7/site-packages
$ pwd && ll
/home/ansible/local/python/lib/python2.7/site-packages
total 1132
drwxrwxr-x. 17 ansible ansible   4096 Oct  5 07:57 ansible
drwxrwxr-x.  2 ansible ansible    142 Oct  5 07:57 ansible-2.7.8.dist-info
drwxrwxr-x.  2 ansible ansible    104 Oct  5 07:57 bcrypt
drwxrwxr-x.  2 ansible ansible    142 Oct  5 07:57 bcrypt-3.1.7.dist-info
drwxrwxr-x.  2 ansible ansible    133 Oct  5 07:57 certifi
drwxrwxr-x.  2 ansible ansible    142 Oct  5 07:57 certifi-2020.6.20.dist-info
drwxrwxr-x.  2 ansible ansible   4096 Oct  5 07:57 cffi
drwxrwxr-x.  2 ansible ansible    166 Oct  5 07:57 cffi-1.14.3.dist-info
-rwxrwxr-x.  1 ansible ansible 808496 Oct  5 07:57 _cffi_backend.so
drwxrwxr-x.  2 ansible ansible     38 Oct  5 07:57 cffi.libs
drwxrwxr-x.  3 ansible ansible   4096 Oct  5 07:57 chardet
drwxrwxr-x.  2 ansible ansible    195 Oct  5 07:57 chardet-3.0.4.dist-info
drwxrwxr-x.  4 ansible ansible    223 Oct  5 07:57 cryptography
drwxrwxr-x.  2 ansible ansible    221 Oct  5 07:57 cryptography-3.1.1.dist-info
drwxrwxr-x.  2 ansible ansible     84 Oct  5 07:57 download
drwxrwxr-x.  2 ansible ansible    127 Oct  5 07:57 download-0.3.5.dist-info
-rw-rw-r--.  1 ansible ansible    126 Oct  5 07:57 easy_install.py
-rw-rw-r--.  1 ansible ansible    337 Oct  5 07:57 easy_install.pyc
drwxrwxr-x.  2 ansible ansible     74 Oct  5 07:57 enum
drwxrwxr-x.  2 ansible ansible    127 Oct  5 07:57 enum34-1.1.10.dist-info
drwxrwxr-x.  2 ansible ansible   4096 Oct  5 07:57 idna
drwxrwxr-x.  2 ansible ansible    146 Oct  5 07:57 idna-2.10.dist-info
drwxrwxr-x.  2 ansible ansible    146 Oct  5 07:57 ipaddress-1.0.23.dist-info
-rw-rw-r--.  1 ansible ansible  79875 Oct  5 07:57 ipaddress.py
-rw-rw-r--.  1 ansible ansible  79609 Oct  5 07:57 ipaddress.pyc
drwxrwxr-x.  2 ansible ansible   4096 Oct  5 07:57 jinja2
drwxrwxr-x.  2 ansible ansible    170 Oct  5 07:57 Jinja2-2.11.2.dist-info
drwxrwxr-x.  2 ansible ansible    201 Oct  5 07:57 markupsafe
drwxrwxr-x.  2 ansible ansible    146 Oct  5 07:57 MarkupSafe-1.1.1.dist-info
drwxrwxr-x.  4 ansible ansible   4096 Oct  5 07:57 nacl
drwxrwxr-x.  2 ansible ansible   4096 Oct  5 07:57 ntlm_auth
drwxrwxr-x.  2 ansible ansible    142 Oct  5 07:57 ntlm_auth-1.5.0.dist-info
drwxrwxr-x.  2 ansible ansible   4096 Oct  5 07:57 paramiko
drwxrwxr-x.  2 ansible ansible    190 Oct  5 07:57 paramiko-2.7.2.dist-info
drwxrwxr-x.  4 ansible ansible    116 Oct  5 07:57 pip
drwxrwxr-x.  2 ansible ansible    170 Oct  5 07:57 pip-20.2.3.dist-info
drwxrwxr-x.  4 ansible ansible    117 Oct  5 07:57 pkg_resources
drwxrwxr-x.  3 ansible ansible   4096 Oct  5 07:57 pycparser
drwxrwxr-x.  2 ansible ansible    142 Oct  5 07:57 pycparser-2.20.dist-info
drwxrwxr-x.  2 ansible ansible    142 Oct  5 07:57 PyNaCl-1.4.0.dist-info
drwxrwxr-x.  2 ansible ansible    142 Oct  5 07:57 pywinrm-0.4.1.dist-info
drwxrwxr-x.  2 ansible ansible    142 Oct  5 07:57 PyYAML-5.3.1.dist-info
-rw-r--r--.  1 ansible ansible    119 Oct  5 07:55 README
drwxrwxr-x.  2 ansible ansible   4096 Oct  5 07:57 requests
drwxrwxr-x.  2 ansible ansible    190 Oct  5 07:57 requests-2.24.0.dist-info
drwxrwxr-x.  2 ansible ansible     94 Oct  5 07:57 requests_ntlm
drwxrwxr-x.  2 ansible ansible    171 Oct  5 07:57 requests_ntlm-1.1.0.dist-info
drwxrwxr-x.  5 ansible ansible   4096 Oct  5 07:57 setuptools
drwxrwxr-x.  2 ansible ansible    210 Oct  5 07:57 setuptools-44.1.1.dist-info
drwxrwxr-x.  2 ansible ansible    142 Oct  5 07:57 six-1.15.0.dist-info
-rw-rw-r--.  1 ansible ansible  34159 Oct  5 07:57 six.py
-rw-rw-r--.  1 ansible ansible  34934 Oct  5 07:57 six.pyc
drwxrwxr-x.  3 ansible ansible   4096 Oct  5 07:57 tqdm
drwxrwxr-x.  2 ansible ansible    166 Oct  5 07:57 tqdm-4.49.0.dist-info
drwxrwxr-x.  5 ansible ansible   4096 Oct  5 07:57 urllib3
drwxrwxr-x.  2 ansible ansible    146 Oct  5 07:57 urllib3-1.25.10.dist-info
drwxrwxr-x.  4 ansible ansible   4096 Oct  5 07:57 wheel
drwxrwxr-x.  2 ansible ansible    170 Oct  5 07:57 wheel-0.35.1.dist-info
drwxrwxr-x.  4 ansible ansible    238 Oct  5 07:57 winrm
drwxrwxr-x.  2 ansible ansible    142 Oct  5 07:57 xmltodict-0.12.0.dist-info
-rw-rw-r--.  1 ansible ansible  17406 Oct  5 07:57 xmltodict.py
-rw-rw-r--.  1 ansible ansible  15610 Oct  5 07:57 xmltodict.pyc
drwxrwxr-x.  2 ansible ansible   4096 Oct  5 07:57 yaml
```

# Reference 

https://hiseon.me/python/linux-python-install/
