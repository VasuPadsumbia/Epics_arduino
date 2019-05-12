TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = helloWorldIOC
# helloWorldIOC.dbd will be created and installed
DBD += helloWorldIOC.dbd

# helloWorldIOC.dbd will be made up from these files:
helloWorldIOC_DBD += base.dbd

# Include dbd files from all support applications:
#helloWorldIOC_DBD += xxx.dbd
helloWorldIOC_DBD += asyn.dbd
helloWorldIOC_DBD += stream.dbd
helloWorldIOC_DBD += drvAsynIPPort.dbd
helloWorldIOC_DBD += drvAsynSerialPort.dbd


# Add all the support libraries needed by this IOC
#helloWorldIOC_LIBS += xxx
helloWorldIOC_LIBS += asyn
helloWorldIOC_LIBS += stream

# helloWorldIOC_registerRecordDeviceDriver.cpp derives from helloWorldIOC.dbd
helloWorldIOC_SRCS += helloWorldIOC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
helloWorldIOC_SRCS_DEFAULT += helloWorldIOCMain.cpp
helloWorldIOC_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#helloWorldIOC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
helloWorldIOC_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

