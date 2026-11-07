@echo off
cd /d "%~dp0"
echo Actualizando mods...
git checkout -- .
git clean -fd -e config.json
git pull
echo.
echo Mods actualizados. Iniciando Stardew Valley...
start ..\StardewModdingAPI.exe