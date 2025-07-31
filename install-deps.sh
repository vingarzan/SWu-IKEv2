#!/bin/bash

# You must run this as root

apt install python3-venv swig net-tools # python3-pyscard

python3 -m venv venv

source venv/bin/activate

pip3 uninstall pycrypto

pip3 install wheel

pip3 install -r requirements.txt

cd ../../../github.com/mitshell/CryptoMobile
pip3 install .

cd ../../../github.com/mitshell/card
pip3 install .

cd ../../../github.com/fasferraz/SWu-IKEv2


python3 swu_emulator.py -h