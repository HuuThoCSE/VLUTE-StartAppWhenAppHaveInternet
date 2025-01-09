@echo off
:checkNetwork
ping www.google.com -n 1 >nul
if errorlevel 1 (
    timeout /t 5 >nul
    goto checkNetwork
) else (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" http://thi.vlute.edu.vn
)
