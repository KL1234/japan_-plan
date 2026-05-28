@echo off
setlocal
cd /d "%~dp0"
set PORT=8765

echo ============================================
echo  Japan Itinerary - Local Preview
echo  URL: http://localhost:%PORT%/index.html
echo  Close this window to stop the server
echo ============================================
echo.

REM Prefer the py launcher (most reliable on Windows)
where py >nul 2>nul
if %errorlevel%==0 (
    start "" "http://localhost:%PORT%/index.html"
    py -3 -m http.server %PORT%
    goto :ended
)

REM Fallback to python.exe, skipping the Microsoft Store stub
for /f "delims=" %%P in ('where python 2^>nul') do (
    echo %%P | findstr /i "WindowsApps" >nul
    if errorlevel 1 (
        start "" "http://localhost:%PORT%/index.html"
        "%%P" -m http.server %PORT%
        goto :ended
    )
)

echo [ERROR] Python 3 not found.
echo   Install via:  winget install Python.Python.3.12
echo   Or download:  https://www.python.org/downloads/
echo.
pause
goto :eof

:ended
echo.
echo Server stopped (or failed to start). Press any key to close.
pause >nul
