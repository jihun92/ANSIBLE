PYTHON=/home/$USER/local/python

echo '########### install dependency whl in' $PYTHON '##########'

pip install --prefix $PYTHON --no-deps ./dependency/bcrypt-3.1.7-cp27-cp27mu-manylinux1_x86_64.whl
pip install --prefix $PYTHON --no-deps ./dependency/certifi-2020.6.20-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency/cffi-1.14.3-cp27-cp27mu-manylinux1_x86_64.whl
pip install --prefix $PYTHON --no-deps ./dependency/chardet-3.0.4-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency/cryptography-1.7.2.tar.gz
pip install --prefix $PYTHON --no-deps ./dependency/enum34-1.1.10-py2-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency/idna-2.10-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency/ipaddress-1.0.23-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency/Jinja2-2.11.2-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency/MarkupSafe-1.1.1-cp27-cp27mu-manylinux1_x86_64.whl
pip install --prefix $PYTHON --no-deps ./dependency/ntlm_auth-1.5.0-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency/pycparser-2.20-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency/PyNaCl-1.4.0-cp27-cp27mu-manylinux1_x86_64.whl
pip install --prefix $PYTHON --no-deps ./dependency/requests-2.24.0-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency/requests_ntlm-1.1.0-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency/setuptools-44.1.1-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency/six-1.15.0-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency/urllib3-1.25.10-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency/xmltodict-0.12.0-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency/PyYAML-5.3.1.tar.gz


echo '########### install pywinrm in' $PYTHON '##########'
pip install --prefix $PYTHON ./pywinrm/pywinrm-0.4.1.tar.gz

echo '########### install paramiko in' $PYTHON '##########'
pip install --prefix $PYTHON ./paramiko/paramiko-2.1.1-py2.py3-none-any.whl

echo '########### install sshpass.rpm ###########'
sudo yum install -y ./sshpass/sshpass-1.06-2.el7.x86_64.rpm

echo '########### install ansible in' $PYTHON '##########'
pip install --prefix $PYTHON ./ansible/ansible-2.7.8.tar.gz

