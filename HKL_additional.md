OS: Ubuntu 20.04
HKL version: 5.0
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


