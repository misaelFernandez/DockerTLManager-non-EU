@echo off
set TOMCAT=tomcat
set MYSQL=mysql\sql
set URL=https://ec.europa.eu/digital-building-blocks/artifact/repository/esignaturetlm/eu/europa/ec/cef/esignature/TL-NEU/6.0/TL-NEU-6.0.ZIP

mkdir %TOMCAT% 2>nul
mkdir %MYSQL% 2>nul

if exist "%TOMCAT%\lib" if exist "%TOMCAT%\tlmanager-non-eu-config" if exist "%TOMCAT%\webapps" if exist "%MYSQL%\init.sql" (
    echo Todas las carpetas y archivos ya existen. Saltando descarga.
    goto complete
)

echo Descargando TL-NEU...
powershell -Command "Invoke-WebRequest -Uri '%URL%' -OutFile 'TL-NEU.ZIP'"

echo Descomprimiendo archivo...
powershell -Command "Expand-Archive -Path 'TL-NEU.ZIP' -DestinationPath 'TL-NEU' -Force"

echo Moviendo carpetas y archivos...

if not exist "%TOMCAT%\lib" (
    xcopy /E /I /Y "TL-NEU\lib" "%TOMCAT%\lib\" 2>nul
)
if not exist "%TOMCAT%\tlmanager-non-eu-config" (
    xcopy /E /I /Y "TL-NEU\tlmanager-non-eu-config" "%TOMCAT%\tlmanager-non-eu-config\" 2>nul
)
if not exist "%TOMCAT%\webapps" (
    xcopy /E /I /Y "TL-NEU\webapps" "%TOMCAT%\webapps\" 2>nul
)
if not exist "%MYSQL%\init.sql" (
    copy "TL-NEU\init.sql" "%MYSQL%\" 2>nul
)

echo Limpiando archivos temporales...
rd /S /Q TL-NEU 2>nul
del TL-NEU.ZIP 2>nul

:complete

echo Construir y levantar docker...
docker-compose up --build
pause
