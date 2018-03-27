#!/bin/bash

set -e

sudo apt-get install -y build-essential \
        bzip2 libbz2-dev \
        libncursesw5-dev \
        lzma-dev liblz-dev liblzma-dev \
        tk8.5-dev \
        libreadline7 libreadline-dev \
        libssl-dev \
        libgdbm-dev \
        libc6-dev \
        zlib1g-dev \
        libncurses5-dev \
        openssl \
        curl \
        bzip2 \
        libncursesw5-dev

if [[ ! -f sqlite-autoconf-3220000.tar.gz ]]; then
  wget https://www.sqlite.org/2018/sqlite-autoconf-3220000.tar.gz
fi


tar xf sqlite-autoconf-3220000.tar.gz

cd sqlite-autoconf-3220000

./configure --prefix=/home/vagrant/local   \
        --disable-static   \
        --enable-fts5   \
        --enable-json1 CFLAGS="-g -O2 -DSQLITE_ENABLE_FTS3=1 -DSQLITE_ENABLE_FTS4=1 -DSQLITE_ENABLE_RTREE=1"

make
make install

cd ..

if [[ ! -f Python-3.6.4.tar.xz ]]; then
  wget https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tar.xz
fi


tar xf Python-3.6.4.tar.xz

cd Python-3.6.4
./configure --prefix=/home/vagrant/local

make
make install

cd ..

if [[ ! -d vim ]]; then
  git clone --depth 10 https://github.com/vim/vim.git
fi

cd vim

PY_CONFIG_DIR=/home/vagrant/local/lib/python3.6/config-3.6m-x86_64-linux-gnu
PATH_PYTHON3=/home/vagrant/local/bin/python3.6

vi_cv_path_python3=$PATH_PYTHON3 ./configure --enable-multibyte \
        --enable-shared \
        --enable-multibyte \
        --enable-python3interp=yes \
        --with-python-config-dir=$PY_CONFIG_DIR \
        --prefix=/home/vagrant/local --enable-fail-if-missing --with-features=huge

make
make install

sudo apt-get -y install libevent-dev

if [[ ! -f tmux-2.6.tar.gz ]]; then
    wget https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz
fi

tar xf tmux-2.6.tar.gz
cd tmux-2.6
./configure --prefix=/home/vagrant/local
make
make install
cd ..
