@echo off
chcp 65001
cls

REM author: snomiao@gmail.com
REM version: (20200413)
REM desc: �����gist����Ϊ #����ѹ����Ƶ��20M��(&2).bat ���ŵ��������Ŀ¼��
REM C:\Users\snomi\AppData\Roaming\Microsoft\Windows\SendTo
REM ����Ƶ���Ҽ���������͵���Ȼ��2�����ܿ��ٵذ���Ƶѹ����20M�ڣ�������΢�Ŵ�����
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

REM �������PATH�Ļ�
REM ͨ��Ŀ¼Ϊ C:\Program Files (x86)\Jeenpi\ffmpeg.exe
title Converting %1_1Mbps.mp4
ffmpeg -i %1 ^
    -b:v 1000k ^
    %1_1Mbps.mp4

start explorer /select, %1_1Mbps.mp4

SHIFT
goto proc
:completed
pause
