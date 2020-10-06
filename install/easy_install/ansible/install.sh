# install ansible dependency rpm
sudo yum install *.rpm

# install ansible
tar zxvf ansible-2.7.8.tar.gz
cd ansible-2.7.8
python setup.py install --user

