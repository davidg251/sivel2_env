# sivel2_env

Este repositorio contiene las herramientas necesarias para montar un ambiente
de desarrollo de SIVeL2 en un sistema operativo diferente a ADJ. Despliega 2
contenedores: **sivel2_database** con la base de datos y **sivel2_backend** con
la aplicacion SIVeL2 (MVC).

Las dependencias son [docker](https://docs.docker.com/install/) y [docker-compose](https://docs.docker.com/compose/install/) .

Se debe clonar el repositorio y ejecutar el archivo **start.sh** : 

```bash

$ sh start.sh

```

Este script se encarga de clonar el repositorio de sivel2 y cambiar a la rama docker_env que solo difiere con la rama master en
archivos de configuracion. Y levanta el ambiente ejecutando.


```bash

$ docker-compose up

```

En caso que sea la primera vez instalara dependencias y demas tareas, luego solo se limitara a levantar el ambiente.

Es importante que en la primera ejecucion se ejecuten