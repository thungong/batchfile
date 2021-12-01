@echo off
mode 50,25
title AeySoft: KeepAlive Utility, Version1.03
set title=KeepAlive Utility, Version1.03
color 0a
set "setmin="
set "delaytime="
set "tm="
set "min="
:loop
mode 50,25
echo.
echo. =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
echo.  %title%
echo.  Script by: Aey Tato
echo.  Email: thungong.c@gmail.com
echo. =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo  		   %title%
echo  		   Creation by: Aey Thungong C.
echo.                                     
ping localhost -n 8 >nul
cls
set ran=0
:random
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%
set /a ran=%ran%+1
if "%ran%"=="500" goto next
Goto random
:next
cls
echo.
set /p setmin=Set Time[Minutes]:
echo.
if "%setmin%"=="" GOTO error
set /a delaytime=%setmin%*60
echo.
if "%delaytime%"=="" GOTO error
set check2=%delaytime%=-0
if %delaytime% EQU 1 goto start
if %delaytime%==[] echo That's not numberic && goto stop
set /a chk=%delaytime%-1 >nul
if %chk% LSS 0 echo the input number is less than 1 && goto stop
:start
set loopCount=%delaytime%
echo.
echo Okay! Keep Computer Alive every %setmin% Minutes.
ping localhost -n 4 >nul
set run=0
:next2
color 0a
set /a run=%run%+1
keep.vbs
goto :loop1
:loop1
set /a tm=%delaytime%
:loop2
cls
mode 50,25
echo.
echo.
echo. =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo.  %title%
echo.  Script by: Aey Tato
echo.  Email: thungong.c@gmail.com
echo. =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo.
echo.  %setmin% Minutes Countdown..
echo.  
echo.  
echo.
echo.  So, this tool will blink WinMenu to make
echo.  the computer know that we're still using him.
echo. ----------------------------------------------
echo.
echo.  Run %run% Times Succeed
echo.
echo. ++++++++++++++++++++++++++++++++++++++
echo   Next Run in: %min% Minutes OR %tm% Sec.
echo. ++++++++++++++++++++++++++++++++++++++
echo.
echo. =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo.					AeySoft
echo.			   thungong.c@gmail.com
if %errorlevel% neq 0 goto end
ping localhost -n 2 >nul
set /a tm=%tm%-1
set /a min=%tm%/60
if %tm%==0 (
goto next3
)else goto :loop2
:next3
mode 50,20
color 06
cls
echo.
echo. =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo.  %title%
echo.  Script by: Aey Tato
echo.  Email: thungong.c@gmail.com
echo. =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo.
echo.  
echo.  
echo.             **** RUNNING ****
echo.
echo.  
echo.  
echo. ----------------------------------------------
echo.
echo.  
echo.
ping localhost -n 4 >nul
goto :next2
:error
echo.
echo You Did Not Enter Any
echo Try Again!
ping localhost -n 8 >nul
goto end
:stop
echo.
echo Missing Value or Wrong Syntax
ping localhost -n 8 >nul
goto end
:end
set "setmin="
set "delaytime="
set "tm="
set "min="
goto loop
