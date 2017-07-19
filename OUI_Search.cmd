@echo off

rem Set OUI lookup table file path
set MASTER=%~dp0master.txt
rem set MASTER=%~dp0simplified.txt

rem Accept mac addresses as command-line arguments

rem Adjust the search format for the 4-column complete master table
if not "%~1"=="" set SEARCH=%~1&set FORMAT="tokens=3 delims={}"&goto MAC_Search

rem Adjust the search format for the 2-column simplified master table
rem if not "%~1"=="" set SEARCH=%~1&set FORMAT="tokens=2 delims={}"&goto MAC_Search

rem Interactive mode prompt
:Choice

rem Exit if not in interactive mode
if not "%~1"=="" exit /b

set FORMAT="tokens=*"
choice /m "Reverse search by company keywords?"
if %ERRORLEVEL%==1 goto Company_Search

:MAC_Input
set /p SEARCH=MAC address: || exit /b

rem Get rid of extra characters before searching
:MAC_Search
set SEARCH=%SEARCH::=%
set SEARCH=%SEARCH:-=%

rem Search the MA-S block entries

for /f %FORMAT% %%0 in ('findstr /r /i "[{]%SEARCH:~,9%[}][{]" %MASTER%') do echo %%0&goto Choice

rem Search the MA-M block entries

for /f %FORMAT% %%0 in ('findstr /r /i "[{]%SEARCH:~,7%[}][{]" %MASTER%') do echo %%0&goto Choice

rem Search the MA-L block entries

for /f %FORMAT% %%0 in ('findstr /r /i "[{]%SEARCH:~,6%[}][{]" %MASTER%') do echo %%0&goto Choice

rem Return a response if no results found

echo Unregistered OUI
goto Choice

rem Search by company information and not strictly by mac address
:Company_Search
set /p SEARCH=Company keywords: || exit /b
findstr /r /i "%SEARCH%" %MASTER% | more
goto Choice
