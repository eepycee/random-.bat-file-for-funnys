@echo off

:Ask
SET /P Input="Do you want to continue? (Y/N): "
IF /I "%Input%"=="Y" goto yes
IF /I "%Input%"=="N" goto no
IF /I "%Input%"=="Q" goto what
IF /I "%Input%"=="SHUT" goto shutdown
IF /I "%Input%"=="SUPERCELL" goto supercell
ECHO Invalid input. Please enter Y or N.
GOTO Ask

:yes
ECHO User chose Yes. Proceeding...
ECHO Opening in 5 seconds...
timeout /t 1 /nobreak >nul
ECHO Opening in 4 seconds...
timeout /t 1 /nobreak >nul
ECHO Opening in 3 seconds...
timeout /t 1 /nobreak >nul
ECHO Opening in 2 seconds...
timeout /t 1 /nobreak >nul
ECHO Opening in 1 second...
timeout /t 1 /nobreak >nul
ECHO Opening file now.
calc
GOTO end

:no
ECHO User chose No. Exiting...
GOTO end

:what
ECHO What do you mean q?
calc
calc
calc
calc
calc
calc
calc
calc
calc
calc
ECHO have 10 calcs
timeout /t 3 /nobreak >nul
GOTO end

:shutdown
Echo Pc is shutting down.
timeout /t 1 /nobreak >nul
Echo Pc is shutting down..
timeout /t 1 /nobreak >nul
Echo Pc is shutting down...
timeout /t 1 /nobreak >nul
shutdown /s /t 2

:supercell
ECHO starting download of supercellwx.
SET "DOWNLOAD_URL=https://tinyurl.com/SupER-Cell"

SET "OUTPUT_NAME=Supercellws.msi"

echo Starting download of %OUTPUT_NAME%

curl -L -o %OUTPUT_NAME% %DOWNLOAD_URL%
goto end

:end
ECHO Script finished.
exit
