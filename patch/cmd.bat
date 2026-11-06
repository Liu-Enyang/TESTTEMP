@echo off
setlocal

set "PATCH=%~dp0gcps-web_CNC_MERGER_AFTER_20261106_staged.patch"
set "REPO=%~1"
if "%REPO%"=="" set "REPO=%~dp0..\..\gcps-web"

if not exist "%PATCH%" (
    echo Patch file not found: %PATCH%
    exit /b 1
)
if not exist "%REPO%\.git" (
    echo gcps-web repository not found: %REPO%
    echo Usage: cmd.bat C:\path\to\gcps-web
    exit /b 1
)

git -C "%REPO%" apply --check "%PATCH%"
if errorlevel 1 (
    echo Patch check failed. No changes were applied.
    exit /b 1
)

git -C "%REPO%" apply "%PATCH%"
if errorlevel 1 (
    echo Patch apply failed.
    exit /b 1
)

echo Patch applied to %REPO%
