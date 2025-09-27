@echo off
chcp 65001 >nul


echo Проверка установленных компонентов...

echo Проверка WSL2...
wsl --status


echo Проверка Docker...
docker --version

echo Проверка Rust...
rustc --version

echo Обновление переменных окружения...
call refreshenv

echo Проверка Python из Anaconda...
python --version
conda --version

echo Все программы установлены и готовы к работе!
pause