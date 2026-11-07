@echo off
cd /d "%~dp0"
echo Actualizando mods...

:: Detectar rama principal (master o main)
for /f "tokens=*" %%b in ('git remote show origin 2^>nul ^| findstr "HEAD branch"') do set "BRANCH=%%b"
set "BRANCH=%BRANCH:*: =%"
if "%BRANCH%"=="" set "BRANCH=master"

git fetch origin
git reset --hard origin/%BRANCH%
git clean -fd -e config.json

echo.
echo Mods actualizados. Iniciando Stardew Valley...
start ..\StardewModdingAPI.exe