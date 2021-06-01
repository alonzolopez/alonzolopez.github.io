---
title: "Autonomous Boat"
categories:
  - Robotics
tags:
  - CAD
  - Prototyping
  - Arduino
  - Raspberry Pi
  - ROS
  - Project Management
  - Electronics
  - SolidWorks
  - Mechanical Design
---
<figure>
  <img src="/assets/images/portfolio/boat/boat_side.jpg" width="800" height="500">
  <figcaption></figcaption>
</figure>
For MIT's *2.017, Design of Electromechanical Robotic Systems*, myself and two teammates designed and tested an autonomous boat meant to complete navigation tasks on the Charles River. The boat was equipped with:
- A remotely operated Raspberry Pi running ROS
- Arduinos for motor control and sensor input
- IMU and GPS modules
- Ultrasonic proximity sensors
- Relay switch to switch between manual and autonomous control

## My Role
I was team lead and electronics lead. As team lead, I was in charge of our overall design plan and execution. As software and electronics lead, I was in charge of:
- Designing and integrating the electromechanical system consisting of the provided motors and 12V battery, onboard sensors, and onboard processors (Arduino and Raspberry Pi) for sensor data processing and motor control.
- Programming the autonomous sensor data processing, motion planning, and control to complete the navigation tasks at hand.

This project was an exercise in using the following tools and techniques:

- The overall system design process (FRDPARRC - Functional Requirements, Design Parameters, Analysis, Resources, Risk, Countermeasures).
- Implementing ROS on a system from scratch.
- Electrical system design and integration - interfacing between Arduinos, Raspberry Pis, and various sensors.
- Implementing an Infinite Impulse Response Filter for noisy magnetometer data.


In the end we were able to complete two of the three autonomous tasks: navigate along a straight line in the cardinal direction of our choice and navigate to a GPS coordinate provided to us on-site.