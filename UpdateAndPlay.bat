@echo off
cd /d "%~dp0"
echo Actualizando mods...
git pull
echo.
echo Mods actualizados. Iniciando Stardew Valley...
start ..\StardewModdingAPI.exe