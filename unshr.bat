@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v AutoShareWks /t REG_DWORD /d 00000000 /f
net start server
net share ADMIN$ /delete
net share C$ /delete
net share D$ /delete
net share E$ /delete
net share F$ /delete
net share G$ /delete
net share H$ /delete
net share I$ /delete
net share J$ /delete
net share K$ /delete
net share L$ /delete
net share M$ /delete
net share N$ /delete
net share O$ /delete
net share P$ /delete
net share Q$ /delete
net share R$ /delete
net share S$ /delete
net share T$ /delete
net share U$ /delete
net share V$ /delete
net share W$ /delete
net share X$ /delete
net share Y$ /delete