@echo off
cd /d "%~dp0"
echo Actualizando mods...

:: Detectar rama principal (master o main)
for /f "tokens=*" %%b in ('git remote show origin 2^>nul ^| findstr "HEAD branch"') do set "BRANCH=%%b"
set "BRANCH=%BRANCH:*: =%"
if "%BRANCH%"=="" set "BRANCH=master"

git fetch origin
if %errorlevel% neq 0 (
    echo.
    echo ERROR: No se pudo conectar al servidor. Comprueba tu conexion a internet.
    echo Pulsa cualquier tecla para intentar iniciar el juego sin actualizar...
    pause >nul
)

git reset --hard origin/%BRANCH%
if %errorlevel% neq 0 (
    echo.
    echo ERROR: No se pudieron aplicar las actualizaciones.
    echo Pulsa cualquier tecla para intentar iniciar el juego sin actualizar...
    pause >nul
)

git clean -fd -e config.json

echo.
echo Mods actualizados. Iniciando Stardew Valley...
start ..\StardewModdingAPI.exe