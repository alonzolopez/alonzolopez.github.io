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
I was the Principal Investigator and main technical contributor to Ironsight, an Aerospace lab testbed for maturing CubeSat technologies used in multi-vehicle mission areas.

<figure>
  <img src="/assets/images/portfolio/ironsight/ironsight_lab_iso_light.JPG">
  <figcaption>Two of the Ironsight robotic manipulators in the foreground, with the rover-mounted manipulator in the background.</figcaption>
</figure>

The Ironsight testbed features CubeSat sensors and processors mounted on multiple robotic manipulators and rovers. These robotic platforms simulate the motion of CubeSats in space. The testbed is integrated with the lab's ROS network, enabling command and control of experiments, integration with the VICON motion capture system to capture sub-mm position and orientation data at 400Hz, and data capture for post-experiment analysis. An accompanying ROS+Gazebo simulation environment is used to safely test experiments before taking them to the lab.

<!-- <figure>
  <img src="/assets/images/portfolio/ironsight/ironsight_profile_light.JPG">
  <figcaption></figcaption>
</figure> -->




<figure>
  <img src="/assets/images/portfolio/ironsight/ironsight_lab.JPG">
  <figcaption>The full Ironsight testbed with the two manipulators at center, the rover-mounted manipulator at back left, and the KUKA 7DOF manipulator at back right. The KUKA has a higher payload capacity than the other three Kinova robotic manipulators for handling heavier payloads.</figcaption>
</figure>

Through this project, I've:
- Implemented soft real-time command and control of the Kinova Gen3 7DOF manipulator using its C++ API and the ROS Control library. 
- Integrated soft real-time command and control of the KUKA 7DOF manipulator using the LASA Lab's [iiwa_ros repo](https://github.com/epfl-lasa/iiwa_ros).
- Integrated soft real-time command and control of the UR10e 6DOF manipulator using the [Universal Robots ROS1 Driver](https://github.com/UniversalRobots/Universal_Robots_ROS_Driver)
- For both the Kinova Gen3 7DOF and the KUKA LBR iiwa 7DOF, implemented the analytical inverse kinematic (IK), forward kinematic (FK), dynamic analyses as Python 3 libraries. 
- Designed (in SolidWorks) and fabricated CuseSat emulation hardware consisting of a frame on which the following are mounted: an NVIDIA Jetson Xavier NX, visible light camera, IR camera, depth sensor, and fiducial markers. The frame was plastic in V1 and aluminum in V2.
- Constructed a simulation environment in ROS+Gazebo for the safe testing of technologies before lab operations.
- Programed manipulator trajectories based on sensor input.
- Experimented with fiducial-based pose estimation implementations – sensor data processing for visible light and IR cameras using computer vision to estimate the position and orientation of objects in the camera's FOV.

<figure>
  <img src="/assets/images/portfolio/ironsight/ironsight_cube_closeup.JPG">
  <figcaption>A closeup of the CubeSat emulation hardware. This aluminum frame is spray-painted black to minimize IR reflections captured by the VICON system. On the frame is mounted a fiducial marker, Intel Realsense d435i, and a Jetson Xavier NX. With this hardware, we test close-proximity sensing and maneuvering operations for RPOD/ISAM applications.</figcaption>
</figure>

<figure>
  <img src="/assets/images/portfolio/ironsight/ironsight_ridgeback.JPG">
  <figcaption>The rover-mounted manipulator is the newest addition to the lab, featuring the same CubeSat hardware and Kinova Gen3 robotic manipulator mounted on a Clearpath Ridgeback omnidirectional rover to expand maneuvering tests beyond the confines of a table-mounted manipulator.</figcaption>
</figure>

This lab supports the maturation of technologies for emerging mission areas such as Rendezvous & Proximity Operations with Docking (RPOD) and In-space Servicing, Assembly, and Manufacturing (ISAM). To date, we have tested CubeSat technologies that enable autonomous maneuvering, including close-proximity sensing hardware and software, advanced GNC algorithms for autonomous maneuvering, and next-gen wired/wireless communication software and hardware.

For more context on why this testbed is relevant, visit [Aerospace's article on the testbed](https://aerospace.org/article/aerospace-builds-capabilities-future-mission-needs-ironsight).