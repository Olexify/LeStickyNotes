# Le'Sticky Notes — Build Instructions

## Requirements
- Python 3.9+  (tested up to 3.13; avoid 3.14 edge builds if you hit issues)
- Windows 10+

## Install dependencies
```bat
pip install pyinstaller pystray pillow
```

## Icon files (required for proper EXE icon)
Place both files in the project root before building:
- `icon.ico`  — used as the EXE/taskbar icon by Windows
- `icon.png`  — used by the running app window and system tray

## Build
```bat
cd E:\Projects\Obsidian\QuickNote
pyinstaller --clean build.spec
```

Output: `dist\LeStickyNotes.exe`

## If you get WinError 5 (access denied on old EXE)
The old EXE is still running or locked by Explorer/antivirus:
```bat
taskkill /IM LeStickyNotes.exe /F
del /F /Q dist\LeStickyNotes.exe
pyinstaller --clean build.spec
```

## Data files (stored in user home)
- `%USERPROFILE%\.lesticky_config.json`  — settings
- `%USERPROFILE%\.lesticky_tasks.json`   — tasks
