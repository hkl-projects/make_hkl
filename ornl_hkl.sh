#!/bin/bash

# v5.0.0.3357 {ubuntu 22.04}
./autogen.sh
./configure --enable-introspection
make
sudo make install
export GI_TYPELIB_PATH=/usr/local/lib/girepository-1.0
# python3 example_binding_hkl.py
