#!/bin/bash

set -e

pip3 install --upgrade pip
pip3 install 'python-language-server[yapf]'
pip3 install 'autopep8'
pip3 install 'mccabe'
pip3 install 'pydocstyle'
pip3 install 'pyflakes'
pip3 install 'rope'
