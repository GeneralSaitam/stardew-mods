@echo off
cd /d "%~dp0"
echo Actualizando mods...
cd Mods
git pull --depth 1 origin master
echo.
echo Mods actualizados. Iniciando Stardew Valley...
cd ..
start StardewModdingAPI.exe