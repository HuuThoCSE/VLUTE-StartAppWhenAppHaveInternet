@echo off
:checkNetwork
ping www.google.com -n 1 >nul
if errorlevel 1 (
    echo Không có mạng. Đang kiểm tra lại sau 5 giây...
    timeout /t 5 >nul
    goto checkNetwork
) else (
    echo Mạng đã kết nối. Đang khởi động Chrome...
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" http://thi.vlute.edu.vn
)

:loop
ping www.google.com -n 1 >nul
if errorlevel 1 (
    echo Mất kết nối mạng. Đang chờ kết nối lại...
    timeout /t 5 >nul
    goto loop
) else (
    echo Mạng vẫn ổn định.
    timeout /t 10 >nul
    goto loop
)
