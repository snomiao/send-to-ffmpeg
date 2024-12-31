@echo off
chcp 65001
cls


REM author: snomiao@gmail.com
REM version: (20200413)
REM desc: 把这个gist保存为 #批量压缩视频到20M内(&2).bat ，放到下面这个目录里
REM C:\Users\snomi\AppData\Roaming\Microsoft\Windows\SendTo
REM 在视频上右键，点击发送到，然后按2，就能快速地把视频压缩到20M内（可用于微信传播）
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

REM 如果不加PATH的话

ffmpeg -i %1 ^
    -i snolab150.png -filter_complex overlay=W-w-20:20 ^
    %1+水印.mp4

SHIFT
goto proc
:completed
pause
