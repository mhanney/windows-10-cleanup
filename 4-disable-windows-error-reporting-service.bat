@echo off

echo Disabling Windows Error Reporting Service ...

sc query "WerSvc"| find "RUNNING" >nul 2>&1 && net stop "WerSvc" && sc config "WerSvc" start= disabled

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f >nul 2>&1

echo
echo Windows Error Reporting Service has been disabled. 

echo 
echo Windows Explorer needs to be restarted.
pause

start /wait TASKKILL /F /IM explorer.exe
start explorer.exe