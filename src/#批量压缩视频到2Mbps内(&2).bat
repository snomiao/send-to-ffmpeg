@echo off
chcp 65001
cls

REM Support URL: https://gist.github.com/snomiao/966c1f73c8a50a967086e31f2103ef02

title +2Mbps ��С�����ɣ�������ɺ���Զ��������ļ���

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
title Converting %1_2Mbps.mp4
ffmpeg -i %1 ^
    -b:v 2000k ^
    %1_2Mbps.mp4

start explorer /select,%1_2Mbps.mp4

SHIFT
goto proc
:completed
pause
