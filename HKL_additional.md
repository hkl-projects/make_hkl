OS: Ubuntu 20.04
HKL version: 5.0.0.3434
After going through all dependency installations on HKL.md:


./configure returns:
```bash
configure: error: Package requirements (cglm >= 0.7) were not met:
No package 'cglm' found
```

missing package cglm, not available on apt for my machine


```bash
git clone https://github.com/recp/cglm.gitmake
cd cglm
cmake .
make
sudo make install
```
./configure

missing package inih, correct version not available through apt
```bash
sudo apt install libinih-dev libinih1
```
returns the following:
```bash
Requested 'inih >= 55' but version of inih is 48
```




Now trying with hkl v5.0.0.2080 (updated 8 years ago)

clone repo, checkout version

```bash
git clone git://repo.or.cz/hkl.git
git checkout 764f78d732d5a0181902bc11029fafad80ef1bbd
```

now compiles correctly, can run ./ghkl in /gui dir





trying v5.0.0.2080 configure with both --disable-gui and --enable-introspection
```bash
./autogen
./configure --disable-gui --enable-introspection
make
make install
```

output:

--------    Libraries have been installed in:                                                                                                                                                      
/usr/local/lib
If you ever happen to want to link against installed libraries
in a given directory, LIBDIR, you must either use libtool, and
specify the full pathname of the library, or use the '-LLIBDIR'
flag during linking and do at least one of the following:        
- add LIBDIR to the 'LD_LIBRARY_PATH' environment variable during execution
- add LIBDIR to the 'LD_RUN_PATH' environment variable during linking
- use the '-Wl,-rpath -Wl,LIBDIR' linker flag
- have your system administrator add LIBDIR to '/etc/ld.so.conf'

See any operating system documentation about shared libraries for
more information, such as the ld(1) and ld.so(8) manual pages.
----------------------------------------------------------------------

check /usr/local/lib:

```bash
ls /usr/local/lib   
```

output:                                                                                        
cmake             libcglm.so.0      libhkl.la    libhkl.so.5.0.0  python2.7                      
girepository-1.0  libcglm.so.0.9.5  libhkl.so    netscape         python3.8                                         
libcglm.so        libhkl.a          libhkl.so.5  pkgconfig


