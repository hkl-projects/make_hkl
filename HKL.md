# HKL 

* git clone https://repo.or.cz/hkl.git

* Compile
    * ./autogen.sh
    * ./configure
    * make
    * make install
```
'./configure && make && make install'
```
    * disable gui
        * ./configure --disable-gui
    * experimental libhkl3d library (compute collisions, K6C model only)
        * ./configure --enable-hkl3d
    * enable documentation
        * ./configure --enable-gtk-doc
    * disable documentaiton
        * ./configure --disable-hkl-doc

## dependencies
* autogen
```
sudo apt install gtk-doc-tools autoconf libgsl-dev libgtkmm-3.0-dev libg3d-dev libyaml-dev gettext autopoint gobject-introspection libtool
```
* ./configure
```
sudo apt install libhdf5-dev
```
* make 
```
apt install autoconf-archive debhelper gnuplot-nox gobject-introspection gtk-doc-tools libbullet-dev libg3d-dev libg3d-plugins libgirepository1.0-dev libgl-dev libgsl-dev libgtk-3-dev libgtkglext1-dev libhdf5-dev libyaml-dev python3-gi python3-matplotlib python3-tk elpa-htmlize emacs emacs-gtk dvipng emacs-goodies-el sphinx 
```

* debian/ubuntu
    * sudo apt-get install emacs dvipng emacs-goodies-el org-mode

### dependencies (autogen)
    * autogen.sh
        * gtk-doc-tools
        * autoconf
	    * autoconf-archive  (AX_CFLAGS_WARN_ALL, AX_CXXFLAGS_WARN_ALL, AX_CHECK_COMPILE_FLAG)
    * libgsl-dev
    * [libgtkmm-3.0-dev]
    * libg3d-dev
    * [libyaml-dev]
    * povray
    * asymptote

### dependencies make
    * autoconf-archive
    * debhelper-compat
    * gnuplot-nox
    * gobject-introspection
    * gtk-doc-tools
    * libbullet-dev
    * libg3d-dev
    * libg3d-plugins
    * libgirepository1.0-dev
    * libgl-dev
    * libgsl0-dev {virtual package provided by libgsl-dev}
        * libgsl-dev
    * libgtk-3-dev
    * libgtkglext1-dev
    * libhdf5-dev
    * libyaml-dev
    * python3-gi
    * python3-matplotlib
    * python3-tk
    * elpa-htmlize
    * emacs
        * also a virtual package provided by: 
            * emacs-gtk, 
            * or emacs-lucid, 
            * or emacs-nox
        * or org-mode
            * elpa-org {a virtual package provided by}
    * dvipng
    * emacs-goodies-el
* --------------------------
    * elpa-htmlize
    ```
    Cannot fontify source block (htmlize.el >= 1.34 required)
    ```

```
kg1@lap133454:~/Documents/src/git/HKL/hkl_clone$ sudo apt install gtk-doc-tools autoconf libgsl-dev libgtkmm-3.0-dev libg3d-dev libyaml-dev povray asymptote
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
autoconf is already the newest version (2.71-2).
libgtkmm-3.0-dev is already the newest version (3.24.5-1build1).
libyaml-dev is already the newest version (0.2.2-1build2).
asymptote is already the newest version (2.78+ds-2).
gtk-doc-tools is already the newest version (1.33.2-1).
libg3d-dev is already the newest version (0.0.8-31build1).
libgsl-dev is already the newest version (2.7.1+dfsg-3).
povray is already the newest version (1:3.7.0.10-1).
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.

```
    * autoreconf: configure.ac: not using Gettext
        * gettext, [gettext-base]
        * autopoint
    * configure.ac:214: error: AM_COND_IF: no such condition "HAVE_INTROSPECTION"
        * gobject-introspection
    * hkl/Makefile.am:85: error: Libtool library used but 'LIBTOOL' is undefined
        * libtool
    * warnings??? or errors
    ```
    autoreconf: configure.ac: not using Gettext
    autoreconf: configure.ac: not using Intltool
    ```


    * README
```    	
    gsl >= 1.12    (lib -- required)		http://www.gnu.org/software/gsl/
	gtkmm >= 2.18  (gui -- optional)		http://www.gtkmm.org
	libg3d	       (gui -- optional)		http://automagically.de/g3dviewer/
	libyaml	       (gui -- optional)		http://pyyaml.org/wiki/LibYAML
	gtk-doc >= 1.9 (doc -- optional)		http://www.gtk.org/gtk-doc/
	povray	       (doc -- optional)		http://www.povray.org/
	asymptote      (doc -- optional)		http://asymptote.sourceforge.net/
```

* sudo apt-get install build-essential

## build


# Geometry
* https://people.debian.org/~picca/hkl/hkl.html
* https://people.debian.org/~picca/hkl/hkl.html#orge5e0490

* bluesky E4CV
    * https://nbviewer.org/github/bluesky/hklpy/blob/main/docs/source/examples/notebooks/geo_e4cv.ipynb
    


## Bluesky hklpy
* https://github.com/bluesky/hklpy

## SpICE
* https://neutron.ornl.gov/spice/User_Downloads.html
* Virtual SPICE
* hb3-remote.ornl.gov

## TAX HB-3 
* Selected for conversion to EPICS
* https://trac.sns.gov/trac/slowcontrols/wiki/HB3

## Spec
* https://www.certif.com/
* E4CV vs SPEC
    * https://certif.com/spec_help/fourc.html
        * tth - Detector arm rotation
        * om -  Rotates sample circles
        * chi - Sample tilt
        * phi - Sample rotation
    * https://nbviewer.org/github/bluesky/hklpy/blob/main/docs/source/examples/notebooks/geo_e4cv.ipynb
        * tth   - Detector arm rotation
        * om -> th - Rotates chi around horizontal axis
        * chi   - Rotates phi around beam axis
        * phi   - Sample rotation around horizontal axis (when phi is co-linear with omega)

## Sardana/Reszela
* https://salsa.debian.org/science-team/hkl
* https://packages.debian.org/source/sid/science/hkl
    * diffractometer computation control application
        * ghkl
    * diffractometer computation control library - gir binding
        * gir1.2-hkl-5.0
    * diffractometer computation control library - development file
        * libhkl-dev
    * diffractometer computation control library - documentation
        * libhkl-doc
    * diffractometer computation control library
        * libhkl5

    * Other
        * autoconf-archive
        * debhelper-compat
        * gnuplot-nox
        * gobject-introspection
        * gtk-doc-tools
        * libbullet-dev
        * libg3d-dev
        * libg3d-plugins
        * libgirepository1.0-dev
        * libgl-dev
        * libgsl0-dev {virtual package provided by libgsl-dev}
            * libgsl-dev
        * libgtk-3-dev
        * libgtkglext1-dev
        * libhdf5-dev
        * libyaml-dev
        * python3-gi
        * python3-matplotlib
        * python3-tk
        * elpa-htmlize
        * emacs
            * also a virtual package provided by: emacs-gtk, emacs-lucid, emacs-nox
            * or org-mode
                * elpa-org {a virtual package provided by}
* Implementation
    * https://sardana-controls.org/users/diffractometer.html
* DESY (Hamburg) and MBI (Berlin) use it
* https://www.cells.es/en/technology/computing-controls

## Bindings
* gobject-introspection 
* Python
```
cd tests/bindings
make ipython
```
* ipython - list modules
```
In [7]: module = dir()
In [8]: print('The list of imported Python modules are :', module)
The list of imported Python modules are : ['Hkl', 'In', 'Out', '_', '__', '___', '__builtin__', '__builtins__', '__doc__', '__loader__', '__name__', '__package__', '__spec__', '_dh', '_i', '_i1', '_i2', '_i3', '_i4', '_i5', '_i6', '_i7', '_ih', '_ii', '_iii', '_oh', 'exit', 'get_ipython', 'moduel', 'quit']
```

## crystal test (Yong Cai)
* Wavelength = 1.358
* a = 6.68
* b = 6.68
* c = 9.27
* Reflection1 (004), Theta=17.0329, 2Theta=34.0659
* Reflection2 (200), Theta=103.573, 2Theta=27.1466
* Mode 0 (Omega=0); Mode 3 (phi = fixed)

## Motor simulator
```
[kg1@bl100-dasopi1 cg2-sim-motors2]$ pwd
/home/controls/bl100/applications/cg2-sim-motors2
```

## UB Matrix Spice (Willaim Travis)
https://ornl-my.sharepoint.com/:v:/g/personal/t8w_ornl_gov/EYqNYo5ITbpEvcf6WmDOkhQB0T1Vu1M8SYBrKIumskWJjQ
