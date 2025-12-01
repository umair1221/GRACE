@echo off
setlocal ENABLEDELAYEDEXPANSION
title Build BBox Annotator (Windows)
where py >nul 2>nul && (set PY=py) || (set PY=python)
%PY% -3 -m venv .venv 2>nul || %PY% -m venv .venv
call .venv\Scripts\activate
python -m pip install --upgrade pip
pip install pillow openpyxl pyinstaller
pyinstaller --noconfirm --clean --name "BBoxAnnotator" --onefile --windowed bbox_annotator.py --icon app.ico
echo Done. dist\BBoxAnnotator.exe
pause
