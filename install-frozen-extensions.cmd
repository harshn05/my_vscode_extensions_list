@echo off
setlocal EnableExtensions
set "NODE_NO_WARNINGS=1"

rem ------------------------------------------------------------
rem  Install VS Code extensions from a txt file into a custom folder.
rem
rem  Usage:
rem    install-frozen-extensions.cmd [extensions.txt] [extensions-dir] [user-data-dir]
rem
rem  Defaults:
rem    extensions.txt  -> .\extensions.txt
rem    extensions-dir  -> C:\Users\harshn\Desktop\WinDev\WinDev-Base\_Tools\vscode\frozen-extensions
rem    user-data-dir   -> C:\Users\harshn\Desktop\WinDevTemp\vscode-dist-userdata
rem
rem  extensions.txt: one ID per line. Use ID@version to pin a version.
rem  Lines starting with # are ignored.
rem  Create a pinned list with:  code --list-extensions --show-versions > extensions.txt
rem ------------------------------------------------------------

set "EXT_FILE=%~1"
if "%EXT_FILE%"=="" set "EXT_FILE=extensions.txt"

set "EXT_DIR=%~2"
if "%EXT_DIR%"=="" set "EXT_DIR=C:\Users\harshn\Desktop\WinDev\WinDev-Base\_Tools\vscode\frozen-extensions"

set "DATA_DIR=%~3"
if "%DATA_DIR%"=="" set "DATA_DIR=C:\Users\harshn\Desktop\WinDevTemp\vscode-dist-userdata"

where code >nul 2>&1
if errorlevel 1 (
    echo ERROR: 'code' is not on PATH. Reopen the terminal or reinstall VS Code with "Add to PATH" ticked.
    exit /b 1
)

if not exist "%EXT_FILE%" (
    echo ERROR: Extension list not found: %EXT_FILE%
    exit /b 1
)

if not exist "%EXT_DIR%" mkdir "%EXT_DIR%"
if not exist "%DATA_DIR%\User" mkdir "%DATA_DIR%\User"

set "FAILED=%~dp0failed-extensions.txt"
if exist "%FAILED%" del "%FAILED%"

set /a OK=0
set /a BAD=0

echo.
echo Extension list : %EXT_FILE%
echo Install folder : %EXT_DIR%
echo User data      : %DATA_DIR%
echo.

for /f "usebackq eol=# tokens=* delims=" %%E in ("%EXT_FILE%") do (
    echo ==^> %%E
    call C:\Users\harshn\Desktop\WinDev\WinDev-Base\_Tools\vscode\bin\code.cmd --extensions-dir "%EXT_DIR%" --user-data-dir "%DATA_DIR%" --install-extension %%E --force
    if errorlevel 1 (
        set /a BAD+=1
        echo %%E>>"%FAILED%"
    ) else (
        set /a OK+=1
    )
)

rem ---- Freeze: disable auto-update in the isolated profile (only if no settings yet) ----
if not exist "%DATA_DIR%\User\settings.json" (
    >"%DATA_DIR%\User\settings.json" echo {
    >>"%DATA_DIR%\User\settings.json" echo   "extensions.autoUpdate": false,
    >>"%DATA_DIR%\User\settings.json" echo   "extensions.autoCheckUpdates": false
    >>"%DATA_DIR%\User\settings.json" echo }
)

rem ---- Launcher that always uses the frozen folders ----
set "LAUNCHER=%~dp0launch-frozen-code.cmd"
>"%LAUNCHER%"  echo @echo off
>>"%LAUNCHER%" echo call code --extensions-dir "%EXT_DIR%" --user-data-dir "%DATA_DIR%" %%*

echo.
echo Done. Installed: %OK%   Failed: %BAD%
if %BAD% GTR 0 echo Failed IDs saved to: %FAILED%
echo Launch VS Code with: %LAUNCHER%
endlocal
