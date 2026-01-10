@echo off

:Ask
SET /P Input="Do you want to continue? (Y/N/q/shut/explode): "
IF /I "%Input%"=="Y" goto yes
IF /I "%Input%"=="N" goto no
IF /I "%Input%"=="Q" goto what
IF /I "%Input%"=="SHUT" goto shutdown
IF /I "%Input%"=="explode" goto explode
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
timeout /t 2 /nobreak >nul
exit

:cccc
timeout /t 1 /nobreak >nul
ECHO roll your luck!
REM Generate a random number between 1 and 100 (inclusive)
REM In a batch file, the modulo operator needs to be doubled (%%)
set /a chance_roll=(%RANDOM% %% 100) + 1

echo Rolled a %chance_roll% out of 100.

REM Check if the roll is within the 20% success range (e.g., 1 to 20)
if %chance_roll% leq 20 (
    echo SUCCESS! The action worked. 
goto noshutdown
) else (
    echo FAILURE. The action did not work. 
goto ASAP shutdown
)

pause

:noshutdown
/shutdown a
goto end

:ASAP shutdown
ECHO YOU FAILED!
timeout /t 1 /nobreak >nul
shutdown /s /f /t 0


:explode
echo Oh ok
timeout /t 1 /nobreak >nul
exit

:end
ECHO Script finished.
exit
