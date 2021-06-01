---
title: "B-BOT"
categories:
  - Robotics
tags:
  - CAD
  - Prototyping
  - Arduino
  - ROS
  - Robotic Manipulator
  - Python
  - Electronics
  - SolidWorks
  - Project Management
---
# What is It?
B-BOT is a Bartender Bot. Our team of four designed, built, and programmed B-BOT to mix drinks based on preconfigured recipes.

![Isometric view](/assets/images/portfolio/bbot/MAE263A_Isometric.JPG)

![Scorpio](/assets/images/portfolio/bbot/scorpio.jpg)


# Preconfigured Trajectories
For our first demo, we built B-BOT to mix drinks based on preconfigured trajectories. The environment is made favorable to the robot -- the ingredient cups and mixing cups are all at a priori known positions, so the robot runs a pre-planned trajectory to drop the contents of two ingredient cups in the mixing cup.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/99oud8bybD0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<br/>
The above demo was the result of a six-week sprint to design, build, and program the robot for our first quarter class: MAE 263A Kinematics of Robotic Systems. My main contributions included:
- Programming the Dynamixel motors using the Dynamixel API and ROS Control
- Design and CAD of the gripper and robot links between motor joints
- 3D printing all of the parts

# Dynamic Trajectories
Expanding on our first quarter progress, a subset of the original team went on to implement a more advanced Proportional Integral controller for the manipulator joints. This controller was tasked with mixing drinks in a less favorable environment -- the robot and the cups were placed at positions NOT known a priori. This meant that the robot had to figure out where the cups were in relation to itself in real-time. To do this, we used some good old pose estimation via aruco markers. 

Well, at least all that was the plan. This is what we ended up with:

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/b2x7P7wyka8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<br>
We redesigned the robot to get rid of the prismatic joint at the base and add it as an intermediate link for more dexterity, but this new version ended up being too heavy for the Dynamixel motors. Thus, we had to remove the gripper in order to demo our online-computed trajectory and PI controller. No drinks :/ but we learned a lot.

