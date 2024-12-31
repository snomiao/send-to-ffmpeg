@echo off
chcp 65001
cls

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

REM 如果不加PATH的话

ffmpeg -i %1 ^
    -filter_complex "[0:v]setpts=0.5*PTS[v];[0:a]atempo=2.0[a]" -map "[v]" -map "[a]" ^
    %1+2倍速.mp4

SHIFT
goto proc
:completed
pause
