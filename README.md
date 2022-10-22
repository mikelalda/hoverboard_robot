# About hoverboard_robot

Thi projects intention is to make a public repository where anyone can create a robot with an embedded system and hoverboard wheels Using ROS2.

# Index

- [Project status](#project-status)
- [Docker](#docker)
- [Hoverboard firmware hack](#hoverboard-firmware-hack)
- [Hoverboard control check](#hoverboard-control-check)
- [Robot design](#robot-design)
- [Robot simulation](#robot-simulation)
- [Robot creation](#robot-creation)
- [AI model into ROS2](#ai-model-into-ros2)

## Project status

- [ ] Docker ready to use it in the embedded system
- [ ] Hoverboard firmware hack
- [ ] Hoverboard control with embedded system using ROS2
- [ ] Robot design
- [ ] Robot simulation
- [ ] Create the robot
- [ ] Add own AI system for semantic segmentation into ROS2

## Docker

First of all we need to prepare our docker image to use it in any device.

Dockr tips:

Commands:

1. Listar todas las imágenes
   * `docker images`
2. Listar todos los contenedores ejecutando
   * `docker ps`
3. Listar todos los contenedores
   * `docker ps -a`
4. Borrar un contenedor
   * `docker rm CONTENEDOR_ID`
5. Borrar una imagen
   * `docker rmi IMAGEN_ID`
6. Descargar la imagen de ROS2
   * `docker pull docker_name:tag`
   * check docker images in dockerhub
7. Creamos el contenedor
   * Run this command in shell

     ```
     docker run --name ros2 -it \
     -eDISPLAY=$DISPLAY \
     --device=/dev/dri:/dev/dri \
     -v$HOME/curso_ros/:/tmp/curso_ros/:rw \
     -v/tmp/.X11-unix:/tmp/.X11-unix \
     --env="QT_X11_NO_MITSHM=1" \
     $IMAGE_ID /bin/bash
     ```

Dockerfile commands

1. ADD : copia los archivos de construccion o url remota y se doscomprime automaticamente
2. COPY : se utiliza para copiar archivos o directorios
3. CMD : para ejecutar un script, es decir, linea a ejecutar
4. ENTRYPOINT : nos permite introducir un fichero con argumentos de entrada, un .bash
5. ENV : establece variables de entorno de la imagen
6. FROM : establece la imagen base para dockerfile
7. MANTAINER : establece los metadatos de autor (se puede analizar con inspect)
8. ONBUILD : especifica la instruccion que se ejecutara mas tarde
9. RUN : ejecuta la instruccion dentro del contenedor y consigna el resultado
10. USER : usuario por nombre o id
11. VOLUME : se declara archivo o directorio
12. WORKDIR : se define el directorio de trabajo

Docker execution commands

1. -a : atached adjunta el flujo a la terminal (se adjunta stdin y stdout).
2. -d : detached ejecuta el contenedor en segundo plano.
3. -i : interactive mantiene abierta la entrada estandar para comandos (normalmente se utiliza con -t)
4. --restart : intentara reiniciar un contenedor
5. -rm : premite eliminar un contenedor
6. -t : allocate a pseudo-terminal
7. -h : hostname para indicarle el host del contenedor
8. -n : asignar nombre del contenedor
9. -v : establecer volumen en contenedor
10. --volumes-from : para compartir volumenes entre contenedores
11. --expose : identifica el puerto o rango de puertos pero no abre
12. --link : entablece una interfaz de red privada
13. -p : publica el puerto del contenedor en uno local, para acceder desde host
14. -P : publica todos los puerto expuestos anteriormente (docker port para ver mapeo)
15. --entrypoint : anular la configuracion del dockerfile
16. -u : establece el usuario con el que se ejecutaran los comandos

## Hoverboard firmware hack

The firmware hack is done in VS Code by Platfor IO using the code of [EFeru/hoverboard-firmware-hack-FOC]([linkurl](https://github.com/EFeru/hoverboard-firmware-hack-FOC)) repository. Main steps to upload the firmware:

- Install Platform IO to VS Code
- Open the [project](https://github.com/EFeru/hoverboard-firmware-hack-FOC) mentioned above

## Hoverboard control check

Check the serial protocol of the hoverboard controlling it from the embedded system.

## Robot design

Robot design usig FREECAD

## Robot simulation

Using the robot design and the elements to add in ROS make the URDF and add the robot with navigation control in Gazebo.

## Robot creation

Create the robot

## AI model into ROS2

Train our own model for semantic segmentation using SUN-RGBD dataset and load it to use it as a ROS node.

## Check new things

How to use Nav2 and PlanSys2
