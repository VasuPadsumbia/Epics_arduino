#!../../bin/linux-x86_64/helloWorldIOC

#- You may have to change helloWorldIOC to something else
#- everywhere it appears in this file

< envPaths
epicsEnvSet(STREAM_PROTOCOL_PATH,"/home/vasu/helloWorldIOC/helloWorldIOCApp/Db")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/helloWorldIOC.dbd"
helloWorldIOC_registerRecordDeviceDriver pdbbase
drvAsynSerialPortConfigure("SERIALPORT","/dev/ttyACM0",0,0,0)
asynSetOption("SERIALPORT",0,"baud","115200")
asynSetOption("SERIALPORT",0,"bits","8")
asynSetOption("SERIALPORT",0,"parity","none")
asynSetOption("SERIALPORT",0,"stop","1")
asynSetOption("SERIALPORT",0,"clocal","Y")
asynSetOption("SERIALPORT",0,"crtscts","N")

## Load record instances
dbLoadRecords("db/arduino.db","PORT='SERIALPORT'")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=vasu"
