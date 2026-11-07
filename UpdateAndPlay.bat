@echo off
cd /d "%~dp0"
echo Actualizando mods...
git fetch origin
git reset --hard origin/master
git clean -fd -e config.json
echo.
echo Mods actualizados. Iniciando Stardew Valley...
start ..\StardewModdingAPI.exe