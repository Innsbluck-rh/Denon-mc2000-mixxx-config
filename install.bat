@echo off
rem Copy the MC2000 mapping into the Mixxx user controllers folder (overwrites).
rem Reload the mapping in Mixxx (Preferences > Controllers) or restart Mixxx afterwards.

set "DEST=%LOCALAPPDATA%\Mixxx\controllers"
if not exist "%DEST%" mkdir "%DEST%"

copy /Y "%~dp0Denon-MC2000.midi.xml" "%DEST%\" >nul || goto :error
copy /Y "%~dp0Denon-MC2000-scripts.js" "%DEST%\" >nul || goto :error

echo Installed to %DEST%
exit /b 0

:error
echo Copy failed.
exit /b 1
