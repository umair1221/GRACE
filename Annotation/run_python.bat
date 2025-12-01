@echo off
setlocal
where py >nul 2>nul && (set PY=py) || (set PY=python)
%PY% -3 -m venv .venv 2>nul || %PY% -m venv .venv
call .venv\Scripts\activate
python -m pip install --upgrade pip
pip install pillow openpyxl
python bbox_annotator.py
