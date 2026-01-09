@echo off

:Ask
SET /P Input="Do you want to continue? (Y/N): "
IF /I "%Input%"=="Y" goto yes
IF /I "%Input%"=="N" goto no
IF /I "%Input%"=="Q" goto what
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

:end
ECHO Script finished.
exit
