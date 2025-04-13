# Proyecto de laboratorio de la semana 03: Infraestructura como Código con Terraform

## Descripción

En este proyecto se nos pide implementar un entorno de servidor web utilizando Terraform y Docker.
Para realizar esto se despliegaran dos contenedores de Nginx, cada uno expuesto en diferentes puertos.
Lo que nos permitira probar la infraestructura de forma local.

## Integrante del Proyecto de Laboratorio de la Semana 03

Guanilo Esteves Luis Angel

## Requisitos para la implementacion de este laboratorio

- Tener Docker instalado y corriendo.
- Terraform instalado en tu máquina local.
- Acceso a la terminal de comandos.
- Github iniciadio y configurado a un repositorio

## Instrucciones del Desarrollo de Laboratorio de la Semana 03

1. Clonar o iniciar el repositorio de Git
2. Abrir el proyecto (carpeta)
3. Inicializar terraform (terraform init)
4. Revisar el plan de despliegue (terraform plan)
5. Aplicar el despliegue (terraform apply)

## Despliegue
Al realizar el despliegue de los dos contenedores sugeridos en el enunciado considero lo siguiente:
- Contenedor 1 con nombre Server_web con puerto externo 4005 y puerto interno 80
- Contenedor 2 con nombre Server_web_2 con puerto externo 4006 y puerto interno 80

## Verificacion
- Para poder verificar si realmente se realizo el despliegue se corre el siguiente comando
docker ps
- Este comando me permite ver los contenedores que estan en ejecucion y deben de visualizarse tanto server_web como server_web_2
- para verificar que estan en ejecucion en un navegador accedemos a las siguientes direcciones
        http://localhost:4005
        http://localhost:4006
 - La primera direccion accede al primer contenedor que es server_web en el puerto 4005
 - La Segunda direccion accede al segundo contenedor que es server_web_2 en el puerto 4006
 - Ambas direcciones deben acceder a la pagina de imagen de nginx, en todo caso algun error la pagina no deberia de cargarse.
 