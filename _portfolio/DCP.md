---
title: "Digital Construction Platform"
categories:
  - Manufacturing
  - Robotics
tags:
  - CAD
  - Prototyping
  - Arduino
  - Raspberry Pi
  - Electronics
  - SolidWorks
---
<!-- From Fall 2017 to Spring 2018 I worked on the MIT Media Lab's Digital Construction Platform (DCP), a platform for large-scale on-site fabrication
using real-time data for process control. The DCP is a micro-macro manipulator arm system composed
of hydraulic and electric robotic arms, carried on a tracked mobile platform.  -->

From Fall 2017 to Spring 2018 I worked on the MIT Media Lab's Digital Construction Platform (DCP), a platform for large-scale on-site fabrication. 

<figure>
  <img src="/assets/images/portfolio/DCP/DCP_printing.jpg" width="800" height="500">
  <figcaption>The DCP is a micro-macro manipulator arm system composed of hydraulic and electric robotic arms carried on a tracked mobile platform. Pictured above: the DCP constructs a dome structure on a planar surface during a 13.5 hour print in 2016.</figcaption>
</figure>

My responsibilities included prototyping a scanning LIDAR sensor package to extract environmental topography data that informed the design of the structure geometry and enabled construction on non-planar surfaces. To deliver the prototype, I employed the following skills:
- Mechanical design in SolidWorks and rapid prototyping via 3D printing.
- Electromechanical design of a self-contained sensor unit consisting of a LIDAR rangefinder, pan-and-tilt servo assembly, Arduino Mega, Raspberry Pi, and 5V power bank.
- Programming the Arduino to interface with and control the LIDAR sensor and servo motors (including resolving 2D rangefinder measurements to points in 3D space using servo motor encoder readings and the kinematics of the assembly).
- Bidirectional communication between the Arduino and Raspberry Pi to remotely operate the system and save the topography data.


## The LIDAR Sensor
The LIDAR sensor is a Garmin LIDAR-Lite V3 rangefinder mounted on a 3D printed pan-and-tilt servo assembly. The LIDAR sensor and servo motors are controlled by an Arduino Mega, and data is output via a serial connection to a Raspberry Pi 3 Single Board Computer. 

<figure>
  <img src="/assets/images/portfolio/DCP/Sensor.jpg" width="800" height="500">
  <figcaption>A close-up view of the LIDAR sensor end-effector.</figcaption>
</figure>

The LIDAR sensor only collects range information in the direction of the laser emitter, so the sensor performs a hemispherical scan to collect 3D point cloud data. The encoder data from the servo motors is used to resolve each 1D range measurement produced by the LIDAR sensor to a point in 3D space. Below are a photo of the sensor performing a scan and the resulting point cloud plotted and viewed from multiple angles.

<figure>
  <img src="/assets/images/portfolio/DCP/OneBoxFromBack.jpg" width="800" height="500">
  <figcaption>The LIDAR sensor mid-scan in the Autodesk Build Space.</figcaption>
</figure>

<figure>
  <img src="/assets/images/portfolio/DCP/scan_box_front_tri.jpg" width="800" height="500">
  <figcaption>An trimetric view of the 3D point cloud produced by the scan. The Amazon box is placed to help interpret the orientation of the 3D point cloud data.</figcaption>
</figure>

<figure>
  <img src="/assets/images/portfolio/DCP/scan_box_front_right.jpg" width="800" height="500">
  <figcaption>A side view of the 3D point cloud produced by the scan.</figcaption>
</figure>



## Field Testing
In order to test the LIDAR sensor along with the wind + temperature + humidity sensor, the team went to Ravenswood Nature Reserve in Western Gloucester, MA. 

<figure>
  <img src="/assets/images/portfolio/DCP/DCP_field.jpg" width="800" height="500">
  <figcaption>Setting up the DCP at the beginning of the day.</figcaption>
</figure>

<figure>
  <img src="/assets/images/portfolio/DCP/DCP_scan.jpg" width="800" height="500">
  <figcaption>The DCP positioned the LIDAR sensor at several data collection points at the brink of a small pond. Pictured above, the LIDAR sensor collects data over the water.</figcaption>
</figure>

Together, the LIDAR, wind, temperature and humidity sensors informed the design of a structure specific to the test environment:
- LIDAR 3D point cloud data enabled the design of a structure geometry specific to the environment's non-planar surface.
- Wind speed and direction influenced the location, arrangement, and porosity of the built structure. Wind data may also be used in the context of additive manufacturing to control the micro-macro manipulator in the presence of a wind disturbance force.
- Temperature & humidity influenced the structure's wall thickness and porosity.

<figure>
  <img src="/assets/images/portfolio/DCP/dcp-results.jpg" width="800" height="500">
  <figcaption>The final structure design informed by humidity, temperature, windspeed & direction, and LIDAR sensor readings.</figcaption>
</figure>

For more information, see the paper below.


<!-- ## The Paper -->
<object data="/assets/images/portfolio/DCP/FAB_Vernacular_IASS_2018.pdf" type="application/pdf" width="700px" height="700px">
    <embed src="/assets/images/portfolio/ct-kf/271b_final_project_Alonzo_Lopez.pdf">
        <p>This browser does not support PDFs. Please download the PDF to view it: <a href="http://yoursite.com/the.pdf">Download PDF</a>.</p>
    </embed>
</object>