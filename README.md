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

1. ADD
2. COPY
3. CMD
4. ENTRYPOINT
5. ENV
6. FROM
7. MANTAINER
8. ONBUILD
9. RUN
10. USER
11. VOLUME
12. WORKDIR

check Dockerfile to 

## Hoverboard firmware hack

The firmware hack is done in VS Code by Platfor IO using the code of [EFeru/hoverboard-firmware-hack-FOC]([linkurl](https://github.com/EFeru/hoverboard-firmware-hack-FOC)) repository. Main steps to upload the firmware:

- Platform IO
-

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
