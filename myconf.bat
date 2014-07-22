@echo off
SET CONFOPTS=

@REM release
SET CONFOPTS=%CONFOPTS% -debug-and-release

@REM LGPL version
SET CONFOPTS=%CONFOPTS% -opensource

@REM openssl
IF EXIST "%OPENSSL_INCLUDE%" SET CONFOPTS=%CONFOPTS% -openssl -I "%OPENSSL_INCLUDE%"

@REM odbc
SET CONFOPTS=%CONFOPTS% -plugin-sql-odbc

@REM don't use angle as it needs flex and SDK nonsense
SET CONFOPTS=%CONFOPTS% -opengl desktop

@REM Fake prefix
SET CONFOPTS=%CONFOPTS% -prefix .

@echo on
echo y | call "%1\configure.bat" %CONFOPTS%

@echo off
echo [Paths]>>qtbase\bin\qt.conf
echo Prefix=..>>qtbase\bin\qt.conf
