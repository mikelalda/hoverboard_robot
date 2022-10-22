# About hoverboard_robot

Thi projects intention is to make a public repository where anyone can create a robot with an embedded system and hoverboard wheels Using ROS.

# Index

- [Project status](#project-status)
- [Docker](#docker)
- [Hoverboard firmware hack](#hoverboard-firmware-hack)
- [Hoverboard control check](#hoverboard-control-check)
- [Robot design](#robot-design)
- [Robot simulation](#robot-simulation)
- [Robot creation](#robot-creation)
- [AI model into ROS](#ai-model-into-ros)

## Project status

- [X] Docker ready to use it in the embedded system
- [ ] Hoverboard firmware hack
- [ ] Hoverboard control with embedded system using ROS
- [ ] Robot design
- [ ] Robot simulation
- [ ] Create the robot
- [ ] Add own AI system for semantic segmentation into ROS

## Docker

First of all we need to prepare our docker image to use it in any device.


1. Creamos el contenedor

   * Run this commands in shell and you can run ros melodic on you computer with.

     ```shell
     git clone https://github.com/mikelalda/hoverboard_robot.git - melodic
     cd hoverboard_robot
     docker build . -t hoverboard_robot:melodic
     docker run --name melodic-robot -it --rm --net=host hoverboard_robot:melodic

     ```
   * The fist time will take a while, but after you have done this the first time just running this command is enough and won't take mutch time.

     ```shell
     docker run --name melodic-robot -it --rm --net=host hoverboard_robot:melodic
     ```

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

## AI model into ROS

Train our own model for semantic segmentation using SUN-RGBD dataset and load it to use it as a ROS node.

## Check new things
