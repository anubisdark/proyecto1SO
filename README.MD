# Proyecto 1 Sistemas operativos

Para arrancar el contenedor de docker con gcc en la versión del proyecto se necesita lo siguiente, ejecute el script ./start.sh (recuerde previamente usar chmod +x sobre este script). Este script lo que hace es iniciar la instancia de docker con gcc. Una vez iniciada, va a seleccionar el contenedor que tiene gcc-container (opción 2), ahí tiene el contenedor con la versión específica de gcc para poder compilar el proyecto. 


Para iniciar el orquestador del contenedor use el siguiente comando:

```  docker compose up -d --build

Este comando instalará todos los servicios de gcc para la instancia de docker. 

Esta versión permite conexiones por ssh por lo que puede conectarse desde visual studio code a la instancia. 