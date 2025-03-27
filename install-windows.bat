@echo off
cd app

:: Download and extract sqlite-server-windows.zip
powershell -Command "Invoke-WebRequest -Uri https://github.com/JonUdell/sqlite-server/releases/download/v0.0.1/sqlite-server-windows.zip -OutFile sqlite-server-windows.zip"
powershell -Command "Expand-Archive -Path sqlite-server-windows.zip -DestinationPath ."

:: Rename and clean up
rename sqlite-server-windows.exe sqlite-server.exe
del sqlite-server-windows.zip

:: Launch the server in the background
start "" sqlite-server.exe

:: Wait a bit for the server to start
timeout /t 2 >nul

:: Open the default browser to localhost:8080
start http://localhost:8080
