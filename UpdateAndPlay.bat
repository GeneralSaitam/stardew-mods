@echo off
cd /d "%~dp0"
echo Actualizando mods...

git fetch origin || goto :fetchfail
git reset --hard FETCH_HEAD || goto :resetfail
git clean -fd -e config.json
echo.
echo Mods actualizados. Iniciando Stardew Valley...
goto :launch

:fetchfail
echo.
echo ERROR: No se pudo conectar al servidor.
pause
goto :launch

:resetfail
echo.
echo ERROR: No se pudieron aplicar las actualizaciones.
pause
goto :launch

:launch
start ..\StardewModdingAPI.exe