#!/bin/bash
#chmod +x iniciarTLManager.sh

TOMCAT="tomcat"
MYSQL="mysql/sql"
URL="https://ec.europa.eu/digital-building-blocks/artifact/repository/esignaturetlm/eu/europa/ec/cef/esignature/TL-NEU/6.0/TL-NEU-6.0.ZIP"
# Verificar si todas las carpetas y archivos ya existen
if [ -d "$TOMCAT/lib" ] && [ -d "$TOMCAT/tlmanager-non-eu-config" ] && \
   [ -d "$TOMCAT/webapps" ] && [ -f "$MYSQL/init.sql" ]; then
    echo "Todas las carpetas y archivos ya existen. Saltando descarga."
else
    echo "Descargando TL-NEU..."
    wget -q "$URL" -O TL-NEU.ZIP
    echo "Descomprimiendo archivo..."
    unzip -q TL-NEU.ZIP -d TL-NEU
    echo "Moviendo carpetas y archivos (solo si no existen)..."
    # Mover carpetas solo si no existen
    [ ! -d "$TOMCAT/lib" ] && find TL-NEU -name "lib" -type d -exec cp -rf {} "$TOMCAT/" \;
    [ ! -d "$TOMCAT/tlmanager-non-eu-config" ] && find TL-NEU -name "tlmanager-non-eu-config" -type d -exec cp -rf {} "$TOMCAT/" \;
    [ ! -d "$TOMCAT/webapps" ] && find TL-NEU -name "webapps" -type d -exec cp -rf {} "$TOMCAT/" \;
    # Mover init.sql solo si no existe
    [ ! -f "$MYSQL/init.sql" ] && find TL-NEU -name "init.sql" -type f -exec cp -f {} "$MYSQL/" \;
    echo "Limpiando archivos temporales..."
    rm -rf TL-NEU*
fi
echo "Proceso completado!"

echo "Construir y levantar docker..."
docker-compose up --build
