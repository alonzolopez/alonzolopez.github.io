---
title: "Ironsight"
categories:
  - Robotics
tags:
  - C++
  - Python
  - ROS
  - NVIDIA Jetson
  - Electronics
  - SolidWorks
  - Robotic Manipulator
  - Project Management
---
Ironsight is my main technical project at work. Here are the publicly releasable details:

<figure>
  <img src="/assets/images/portfolio/ironsight/slide-1.jpg" width="800" height="500">
  <figcaption></figcaption>
</figure>

<figure>
  <img src="/assets/images/portfolio/ironsight/slide-2.jpg" width="800" height="500">
  <figcaption></figcaption>
</figure>

I am both the Principal Investigator and technical lead on this project. Through this project, I've:
- Implemented soft real-time control of the Kinova Gen3 7DOF manipulator using its C++ API and the ROS Control library. 
- Performed the closed-form inverse & forward kinematic analysis as well as the dynamic analysis of the both the Kinova Gen3 7DOF and the KUKA LBR iiwa 7DOF.
- Made the closed-form kinematic and dynamic algorithms available as Python functions for use in online manipulator trajectory generation & command via the ROS Control Action interface. 
- Designed (in SolidWorks) and fabricated (3D printed) end-effector tools for the Kinova Gen3 consisting of an NVIDIA Jetson Xavier NX, visible light camera, IR camera, and depth sensor. 
- Programed manipulator trajectories based on sensor input. 
- Experimented with pose estimation – sensor data processing for visible light and IR cameras using ML-based and traditional computer vision to estimate the position and orientation of objects in the camera's FOV.

