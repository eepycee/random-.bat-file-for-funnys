@echo off

:Ask
SET /P Input="Do you want to continue? (Y/N/q/s/e/scwx): "
IF /I "%Input%"=="Y" goto yes
IF /I "%Input%"=="N" goto no
IF /I "%Input%"=="Q" goto what
IF /I "%Input%"=="S" goto shutdown
IF /I "%Input%"=="e" goto explode
IF /I "%Input%"=="scwx" goto supercell
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
SET /P Input="Do you want to continue with the shutdown? (Y/N): "
IF /I "%Input%"=="y" goto SDA
IF /I "%Input%"=="n" goto SDD
IF /I "%Input%"=="Delta" goto ccc
IF /I "%Input%"=="Deltas" goto cccc
ECHO what
goto shutdown

:SDA
SET /P Input="ARE you sure you want to continue with the shutdown? (Y/N): "
IF /I "%Input%"=="y" goto SDAC
IF /I "%Input%"=="n" goto SDD

:SDAC
Echo Pc is shutting down.
timeout /t 1 /nobreak >nul
Echo Pc is shutting down..
timeout /t 1 /nobreak >nul
Echo Pc is shutting down...
timeout /t 1 /nobreak >nul
shutdown /s /t 2

:SDD
echo alright.
goto ask

:ccc
echo HOW DID YOU GET HERE? YOU'RE NOT SUPPOSED TO BE ABLE TO GET HERE. (DELTAS)
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
echo БЕГАТЬ
timeout /t 2 /nobreak >nul
exit

:cccc
timeout /t 1 /nobreak >nul
ECHO roll your luck!
set /a "roll=%RANDOM% %% 100"
timeout /t 1 /nobreak >nul
ECHO You rolled a %roll%
if %roll% lss 25 (
    echo You are safe!
timeout /t 3 /nobreak >nul
goto noshutdown
) else (
    goto ASAP shutdown
timeout /t 1 /nobreak >nul
)

pause

:noshutdown
goto end

:ASAP shutdown
ECHO YOU FAILED!
timeout /t 1 /nobreak >nul
exit

:explode
echo Oh ok
timeout /t 1 /nobreak >nul
exit

:supercell
ECHO starting download of supercellwx.
SET "DOWNLOAD_URL=https://tinyurl.com/SupER-Cell"

SET "OUTPUT_NAME=Supercellwx.msi"

echo Starting download of %OUTPUT_NAME%

curl -L -o %OUTPUT_NAME% %DOWNLOAD_URL%
goto end

:end
ECHO Script finished.
exit
