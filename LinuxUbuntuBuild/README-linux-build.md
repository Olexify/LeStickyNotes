# Ubuntu build package

This package adapts the provided Windows PyInstaller setup to Ubuntu/Linux.

## Included
- `sticky-notes-linux.spec` — Linux PyInstaller spec
- `build-linux.sh` — Ubuntu build script
- `requirements-linux.txt` — Python dependencies
- `sticky_notes.py` — expected app source filename, to be replaced with your full source file before build if needed

## Notes
- The Windows build installs `pyinstaller`, `pystray`, and `pillow`.
- The Windows spec bundles `icon.png` and `icon.ico`; Linux build only uses `icon.png` if present.
- Windows-only metadata such as `version_info.txt` and `.ico` EXE icon handling are omitted on Linux.
- The source uses Windows DPI calls through `ctypes.windll`; these should be guarded for non-Windows systems if they are not already inside try/except.

## Build on Ubuntu
```bash
bash build-linux.sh
```

## Output
```bash
dist/LeStickyNotes/
```
