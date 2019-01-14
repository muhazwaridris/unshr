@echo off
copy unshr.bat "C:\Windows\system32\unshr.bat"
sc create Unshr binpath= "C:\Windows\system32\unshr.bat" start= "auto" Displayname= "Unshr"
net start Unshr
sc description Unshr "To run Unshr Application as service, MAI99."
sc failure Unshr actions= restart/540000/restart/540000/""/540000 reset= 86400
sc config Unshr depend= "LanmanServer"