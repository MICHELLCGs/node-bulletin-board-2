#!/bin/bash

# Iniciar SQL Server en segundo plano
/opt/mssql/bin/sqlservr &

# Esperar a que SQL Server esté disponible antes de ejecutar el script
echo "Esperando a que SQL Server inicie..."
sleep 30s

# Verificar si SQL Server está disponible para aceptar conexiones
for i in {1..50}; do
    /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P $MSSQL_SA_PASSWORD -Q "SELECT 1"
    if [ $? -eq 0 ]; then
        echo "SQL Server está listo para aceptar conexiones"
        break
    else
        echo "Esperando que SQL Server esté disponible..."
        sleep 5
    fi
done

# Ejecutar el script de inicialización
./init-db.sh

# Esperar indefinidamente para que el contenedor siga ejecutándose
wait
