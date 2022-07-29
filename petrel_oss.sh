export http_proxy=""
export https_proxy=""
export HTTP_PROXY=""
export HTTPS_PROXY=""
cp -r  /mnt/lustre/share/petrel-oss-python-sdk/ ./
cd ./petrel-oss-python-sdk
python setup.py sdist
pip install --user dist/*
#cp ./conf/petreloss.conf ~/
