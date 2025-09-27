@echo off
chcp 65001 >nul

REM Проверяем, установлен ли уже Chocolatey

where choco >nul 2>nul
if %errorlevel% neq 0 (
    echo Устанавливаем Chocolatey...
    @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
	echo Chocolatey установлен.
) else (
    echo Chocolatey уже установлен.
)

REM установка программ через Chocolatey. Первая часть. все проги без перезагрузки и в конце проги, которым нужна перезагрузка



echo установка программ, не нкждающихся перезагрузки...
choco install 7zip -y

choco install notepadplusplus -y

choco install pycharm-community -y

choco install git -y

choco install github-desktop -y

choco install maxima -y

choco install knime -y

choco install gimp -y

choco install julia -y

choco install msys2 -y

choco install zettlr -y

choco install miktex -y

choco install texstudio -y

REM установка питона излишняя, ведь анаконда должна тянуть за собой питон. но, его отдельно поставить можно командой "choco install python3 --pre -y"

choco install anaconda3 -y
call refreshenv

choco install visualstudiocode -y

choco install far -y

choco install sumatrapdf -y

choco install googlechrome -y

choco install flameshot -y

choco install qalculate -y

choco install firefox -y

choco install yandex-browser -y

choco install microsoft-edge -y


powershell -Command "Invoke-WebRequest -Uri 'https://telemost.yandex.ru/download-desktop' -OutFile 'TelemostSetup.exe'"

start /wait "" "TelemostSetup.exe" /S
del "TelemostSetup.exe"


REM Арк недоступен. сайт арк в блоке. Ссылку на скучивание программы сберджазз я не нашел, а по этому установка будет в более ручном режиме
echo программы без перезагрузки установлены.




echo Установка WSL2...
wsl --install


echo установка Docker...
choco install docker-desktop -y

echo установка Rust...
choco install rust -y