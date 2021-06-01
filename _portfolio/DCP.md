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
In Fall 2017 and Spring 2018 I took part in an Undergraduate Research Opportunity with the MIT Media Lab's Mediated Matter Group. The work focused on the Digital Construction Platform (DCP), a platform for large-scale on-site fabrication
using real-time data for process control. The DCP is a micro-macro manipulator arm system composed
of hydraulic and electric robotic arms, carried on a tracked mobile platform. 


<figure>
  <img src="/assets/images/portfolio/DCP/DCP_printing.jpg" width="800" height="500">
  <figcaption></figcaption>
</figure>


The DCP is outfitted with sensors that extract environmental data to inform geometric parameters of the built structure. Sensor data captured and the parameters they influence include:
- LIDAR 3D point cloud data that informs structure geometry and tool-path generation to build on non-planar surfaces.
- Wind speed and direction to determine location, arrangement, and porosity of the built structure. Wind data is also useful in the context of additive manufacturing to control the micro-macro manipulator in the presence of a wind disturbance force.
- Temperature & humidity to influence wall thickness and porosity.

These sensors enable automated design and construction in changing conditions. 

My contribution to this project consisted of prototyping and programming the LIDAR sensor unit.

## The LIDAR Sensor
The LIDAR sensor is a Garmin LIDAR-Lite V3 rangefinder mounted on a 3D printed pan-and-tilt servo assembly. The LIDAR sensor and servo motors are controlled by an Arduino Mega, and data is output via a serial connection to a Raspberry Pi 3 Single Board Computer. 

<figure>
  <img src="/assets/images/portfolio/DCP/Sensor.jpg" width="800" height="500">
  <figcaption>A close-up view of the LIDAR sensor end-effector.</figcaption>
</figure>

The LIDAR sensor only collects range information in the direction of the laser emitter, so the sensor performs a hemispherical scan to collect 3D point cloud data. The encoder data from the servo motors is used to resolve each range measurement produced by the LIDAR sensor to a point in 3D space. Below are a photo of the sensor performing a scan and the resulting point cloud plotted and viewed from multiple angles.

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

For the final results of the field testing, see the paper below.

<!-- ## The Paper -->
<object data="/assets/images/portfolio/DCP/FAB_Vernacular_IASS_2018.pdf" type="application/pdf" width="700px" height="700px">
    <embed src="/assets/images/portfolio/ct-kf/271b_final_project_Alonzo_Lopez.pdf">
        <p>This browser does not support PDFs. Please download the PDF to view it: <a href="http://yoursite.com/the.pdf">Download PDF</a>.</p>
    </embed>
</object>