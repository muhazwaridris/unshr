@echo off
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v unshr /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v AutoShareWks /f
net stop unshr
sc delete unshr
del unshr.bat "C:\Windows\system32\unshr.bat"
net stop server && net start server