@echo off
copy unshr.bat "C:\Windows\system32\unshr.bat"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v unshr /t REG_SZ /d "C:\Windows\system32\unshr.bat" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v AutoShareWks /t REG_DWORD /d 00000000 /f