
@echo off
chcp 65001
cls


REM author: snomiao@gmail.com
REM version: (20200413)
REM desc: ?????gist????? #????????????20M??(&2).bat ????????????????
REM C:\Users\snomi\AppData\Roaming\Microsoft\Windows\SendTo
REM ?????????????????????????2???????????????????20M?????????????????
REM Support URL: https://gist.github.com/snomiao/966c1f73c8a50a967086e31f2103ef02


set PATH=%PATH%:
cd /D %~dp0
echo batdir: %~dp0
echo workdir: %cd%
echo processing:
:proc
if "%~1"=="" goto completed

echo ===============================================================================
echo Converting...
echo "%1"
echo -------------------------------------------------------------------------------

REM ???????PATH???
REM ?????? C:\Program Files (x86)\Jeenpi\ffmpeg.exe
ffmpeg -i %1 ^
    -i snolab150.png -filter_complex overlay=W-w-20:20 ^
    -fs 20971520 ^
    %1_20M.mp4

SHIFT
goto proc
:completed
pause
