@echo off

set NULL_VAL=null
set NODE_VER=%NULL_VAL%
set NODE_EXEC=node-v12.16.2-x86.msi 

node -v >.tmp_nodever
set /p NODE_VER=<.tmp_nodever
del .tmp_nodever

IF "%NODE_VER%"=="%NULL_VAL%" (
	echo.
	echo Node.js is not installed! Please press a key to download and install it from the website that will open.
	PAUSE
	start "" https://nodejs.org/dist/v12.16.2/%NODE_EXEC%
	echo.
	echo.
	echo After you have installed Node.js, press a key to shut down this process.
	PAUSE
	EXIT
) ELSE (
	echo A version of Node.js ^(%NODE_VER%^) is installed. Proceeding...
	PAUSE
)