@ECHO OFF
:checkPrivileges 
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges 
) else ( powershell "saps -filepath %0 -verb runas" >nul 2>&1)
exit /b 
:gotPrivileges
copy %~dp0\aio.exe C:\Windows\System32\aio.exe
