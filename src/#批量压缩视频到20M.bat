@echo off
chcp 65001
cls


REM author: snomiao@gmail.com
REM version: (20200413)
REM desc: �����gist����Ϊ #����ѹ����Ƶ��20M��(&2).bat ���ŵ��������Ŀ¼��
REM C:\Users\����û���\AppData\Roaming\Microsoft\Windows\SendTo
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
REM ���ߺ�ffmpeg.exe��һ��
ffmpeg -i %1 ^
    -fs 20971520 ^
    %1_20M.mp4

SHIFT
goto proc
:completed
pause
