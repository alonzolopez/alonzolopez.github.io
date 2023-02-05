---
title: "ExoRomper"
categories:
  - Robotics
  - AI/ML
  - Computer Vision
tags:
  - Python
  - Computer Vision
  - TensorFlow
  - tflite
  - DVC
  - Linux
  - ML Ops
  - CNN
---

ExoRomper is a payload onboard Aerospace's Slingshot-1 space vehicle.
The payload is testing ML-based satellite pose estimation algorithms and ML Ops for space applications.
With this payload, we are iteratively updating, deploying, and validating ML models that operate onboard vehicles in space, in this case for satellite pose estimation.


<figure>
    <img src="/assets/images/portfolio/exoromper/cad_square.jpeg">
    <figcaption>
      The ExoRomper payload features a wing deployed off the side of the
      Slingshot-1 space vehicle, exposed to the lighting conditions of the LEO space environment.
      The wing hosts a mini spacecraft model on a two-axis gimbal.
      Visible and thermal cameras point out at the mini spacecraft and capture data that is passed to the
      payload's onboard AI processor, where image data is processed to
      produce estimates of the mini satellite's pose (pose := position and orientation).
    </figcaption>
</figure>

My role on the team is to:
- Implement the satellite pose estimation algorithm using CNNs implemented in TensorFlow/tflite, PnP from OpenCV, and Python
- Collect and label operational data for CNN training
- Set up and run an ML Ops pipeline using Data Version Control (DVC) to train new models, track all model/code/data changes, and produce more accurate CNNs and thus a more accurate satellite pose estimation algorithm


## The Pose Estimation Algorithm
The pose estimation algorithm works in a three-step process as follows:

<figure>
    <img src="/assets/images/portfolio/exoromper/pose_est_1.jpeg">
    <figcaption>Objection detection - First the satellite is detected in the input image using yolov5-nano. A cropped image results from the bounding box. </figcaption>
</figure>

<figure>
    <img src="/assets/images/portfolio/exoromper/pose_est_2.jpeg">
    <figcaption>Keypoint detection - Zoom in on the cropped image and predict the 2D keypoint pixel coordinates of the satellite using a custom TensorFlow/tflite KeypointDetector.</figcaption>
</figure>

<figure>
    <img src="/assets/images/portfolio/exoromper/pose_est_3.jpeg">
    <figcaption>Perspective-n-Point (PnP) - Use the predicted 2D keypoint pixel coords, the camera intrinsics, and the known 3D model to estimate the pose of the satellite (position and orientation).</figcaption>
</figure>


## Improving the Algorithm's Operational Performance with ML Ops
The lighting conditions in space are tough, and the original models were trained on simulated data only, so I'm improving the algorithm's real-world performance by:
- Collecting and labeling lots of data from the flight unit in LEO
- Using a custom DVC pipeline to:
  - Preprocess data
  - Train more accurate objection detection and keypoint detection models
  - Track all the model, code, and data changes as well as hyperparameters and training results
- Uplinking lighter, faster, more accurate models to the flight unit after testing is complete on the ground unit

Oh did I mention that the payload is in space already! Here are some pictures straight from the flight unit. Those are stars in the background :)

<figure>
    <img src="/assets/images/portfolio/exoromper/exoromper_space_up.jpg">
    <figcaption></figcaption>
</figure>


<figure>
    <img src="/assets/images/portfolio/exoromper/exoromper_space.jpg">
    <figcaption></figcaption>
</figure>


