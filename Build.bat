@echo off
REM Le'Sticky Notes — Build Script

echo Installing dependencies...
pip install pyinstaller
if errorlevel 1 goto :error

pip install pystray pillow
if errorlevel 1 goto :error

echo.
echo Building EXE...
pyinstaller build.spec
if errorlevel 1 goto :error

echo.
echo Done.
echo Output: dist\LeStickyNotes.exe
pause
exit /b 0

:error
echo.
echo Build failed.
pause
exit /b 1