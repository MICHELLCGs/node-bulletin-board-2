FROM mcr.microsoft.com/mssql/server:2017-latest

# Aceptar el EULA y definir la contraseña del usuario 'sa'
ENV ACCEPT_EULA=Y \
    MSSQL_SA_PASSWORD=D0cker2*2*

WORKDIR /init

# Copiar los archivos de inicialización
COPY init-db.* ./ 
COPY entrypoint.sh ./

# Dar permisos de ejecución al script
RUN chmod +x ./init-db.sh ./entrypoint.sh

# Definir el punto de entrada
ENTRYPOINT ["./entrypoint.sh"]
