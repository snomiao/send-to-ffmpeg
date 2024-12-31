@echo off
chcp 65001
cls
title 最小化即可，工作完成后会自动打开所在文件夹

REM author: snomiao@gmail.com
REM version: (20200413)

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

ffmpeg -i %1 "%1.mp4"
start explorer /select,"%1.mp4"

SHIFT
goto proc
:completed
pause
