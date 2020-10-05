PYTHON=/home/$USER/local/python

echo '########### install pip in' $PYTHON '##########'
python pip-20.2.3-py2.py3-none-any.whl/pip install --prefix=$PYTHON pip-20.2.3-py2.py3-none-any.whl

   
# install pip dependency
echo '########### install dependency of pip in' $PYTHON '##########'
pip install --prefix $PYTHON --no-deps ./dependency_whl/certifi-2020.6.20-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency_whl/chardet-3.0.4-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency_whl/idna-2.10-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency_whl/requests-2.24.0-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency_whl/setuptools-44.1.1-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency_whl/six-1.15.0-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency_whl/tqdm-4.49.0-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency_whl/urllib3-1.25.10-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency_whl/wheel-0.35.1-py2.py3-none-any.whl
pip install --prefix $PYTHON --no-deps ./dependency_whl/download-0.3.5.tar.gz
