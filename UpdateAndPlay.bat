@echo off
cd /d "%~dp0"
echo Actualizando mods...
git pull --depth 1 origin master
echo.
echo Mods actualizados. Iniciando Stardew Valley...
start ..\StardewModdingAPI.exe