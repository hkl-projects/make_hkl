# ioc

* hklApp import
```
kg1@lap133454:/epics/iocs/ioc-hkl/iocBoot/iocpydev$ ./st.cmd 
#!../../bin/linux-x86_64/hklApp
< envPaths
epicsEnvSet("IOC","iocpydev")
epicsEnvSet("TOP","/epics/iocs/ioc-hkl")
epicsEnvSet("EPICS_BASE","/epics/base")
# PYTHONPATH points to folders where Python modules are.
epicsEnvSet("PYTHONPATH","/epics/iocs/ioc-hkl/python")
# Prefix set for Triple Axis Spectrometer -> TAS
epicsEnvSet("PREFIX", "TAS:")
cd /epics/iocs/ioc-hkl
## Register all support components
dbLoadDatabase "/epics/iocs/ioc-hkl/dbd/hklApp.dbd"
hklApp_registerRecordDeviceDriver pdbbase
Executing Python code: import pydev
Executing Python code: import builtins
Executing Python code: builtins.pydev=pydev
Executing Python code: import pydev
## Load record instances
dbLoadRecords("/epics/iocs/ioc-hkl/db/hklApp.db")
dbLoadRecords("/epics/iocs/ioc-hkl/db/hkl.template","P=TAS:,R=hb3:")
cd /epics/iocs/ioc-hkl/iocBoot/iocpydev
pydev("import hklApp")
Executing Python code: import hklApp
Traceback (most recent call last):
  File "<string>", line 1, in <module>
  File "/epics/iocs/ioc-hkl/python/hklApp.py", line 3, in <module>
    from gi.repository import Hkl
  File "/usr/lib/python3/dist-packages/gi/importer.py", line 136, in load_module
    raise ImportError('cannot import name %s, '
ImportError: cannot import name Hkl, introspection typelib not found
pydev("hklApp.test()")
Executing Python code: hklApp.test()
Traceback (most recent call last):
  File "<string>", line 1, in <module>
NameError: name 'hklApp' is not defined
# pydev("hklApp.forward()")
# pydev("hklApp.backward()")
iocInit
Starting iocInit
############################################################################
## EPICS R7.0.7
## Rev. R7.0.7
## Rev. Date Git: 2022-09-07 13:50:35 -0500
############################################################################
Warning: Duplicate EPICS CA Address list entry "10.0.0.255:5065" discarded
iocRun: All initialization complete
epics> 
```
