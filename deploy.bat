@echo off

@REM bun ./get-latest-ffmpeg.js

mkdir ..\dist\
echo @echo off > ..\dist\env.bat
echo @set ffmpegPath="%~dp0ffmpeg-latest-win64-static\bin\ffmpeg.exe" >> ..\dist\env.bat
echo @cd /D "%~dp0" >> ..\dist\env.bat

echo batdir: %~dp0

echo %USERPROFILE%

C:\Users\snomi\AppData\Roaming\Microsoft\Windows\SendTo