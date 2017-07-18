@echo off
set MASTER=master.txt
rem set MASTER=simplified.txt
if not "%~1"=="" set SEARCH=%~1&set FORMAT="tokens=3 delims={}"&goto MAC_Search
rem if not "%~1"=="" set SEARCH=%~1&set FORMAT="tokens=2 delims={}"&goto MAC_Search

:Choice
if not "%~1"=="" exit /b
set FORMAT="tokens=*"
choice /m "Reverse search by company keywords?"
if %ERRORLEVEL%==1 goto Company_Search

:MAC_Input
set /p SEARCH=MAC address: || exit /b
:MAC_Search
set SEARCH=%SEARCH::=%
set SEARCH=%SEARCH:-=%

rem search MA-S

for /f %FORMAT% %%0 in ('findstr /r /i "[{]%SEARCH:~,9%[}][{]" %MASTER%') do echo %%0&goto Choice

rem search MA-M

for /f %FORMAT% %%0 in ('findstr /r /i "[{]%SEARCH:~,7%[}][{]" %MASTER%') do echo %%0&goto Choice

rem search MA-L

for /f %FORMAT% %%0 in ('findstr /r /i "[{]%SEARCH:~,6%[}][{]" %MASTER%') do echo %%0&goto Choice

rem no results found

echo Unregistered OUI

goto Choice

:Company_Search
set /p SEARCH=Company keywords: || exit /b
findstr /r /i "%SEARCH%" %MASTER% | more
goto Choice