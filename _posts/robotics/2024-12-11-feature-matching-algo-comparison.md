---
title: "A Comparison of Binary Feature Vector Matching Algorithms"
excerpt: "Comparing the speed and accuracy of several feature matching algorithms"
categories:
    - Robotics
tags:
    - Computer Vision
---

# Feature Matching Algorithm Comparison

This post offers a comparison of the following binary feature matching algorithms:
- Brute force Hamming distance comparison 
- Hamming distance embedding Binary Search Tree (HBST)
- FLANN with Multi-Probe Locality Sensitive Hashing (LSH)
- FLANN with k-d trees

The feature detection and matching C++ code can be viewed [here](https://github.com/alonzolopez/cv-exercises/blob/master/07_feature_detection_and_matching/02_ORB_matching/main.cpp).
For all algorithms except for HBST, the OpenCV implementations are used. 
For HBST, [srrg_hbst](https://gitlab.com/srrg-software/srrg_hbst) is used.

## Procedure

First, /$N=500/$ ORB features are detected in the two following images:

<div class="align-center">
    <img src="/assets/images/blog/feature_matching/1.jpg">
    <img src="/assets/images/blog/feature_matching/11.jpg">
</div>

<br>

Then, the features are matched with each of the algorithms. A distance threshold is applied to reject matches with large distances between the matched descriptor vectors. Here is a sample of /$N=500/$ features matched with HBST (only 104 features were successfully matched after distance thresholding was applied):

<div class="align-center">
    <img src="/assets/images/blog/feature_matching/hbst_matches500.png">
</div>

<br>
This is repeated with /$N*2/$ features all the way up to /$N=64,000/$ features.

## Results

### Matching speed

The matching time versus /$N/$ is plotted below:

<div class="align-center">
    <iframe src="/assets/images/blog/feature_matching/time_vs_n_features.html" width="100%" height="500px" style="border: none;"></iframe>
</div>

For /$N<2,500/$, HBST is faster than all of the other algorithms because it does not have to build an index. 
But for values of /$N>=2,500/$, the other algorithms win out because the time to build an 
index is balanced out with the speed of the search using the index. For values of /$N>=2,500/$, 
HBST is consistently the fastest, followed by FLANN with multi-probe LSH, then FLANN with k-d trees.


### Number of matches

The number of matches versus /$N/$ is plotted below:

<iframe src="/assets/images/blog/feature_matching/matches_vs_n_features.html" width="100%" height="500px" style="border: none;"></iframe>

Brute-force Hamming consistently provides the most matches that pass the distance threshold, 
followed very closely by FLANN with multi-probe LSH. 
HBST provides fewer matches than both of the top matching performers, 
but what it lacks in number of matches it makes up in speed for large values of /$N/$. 
FLANN with k-d trees fails to make accurate matches when filtering with a distance threshold.

## Conclusion

For small values of /$N<2,500/$, use Brute-force Hamming distance matching.

For large values of /$N>=2,500/$, use either HBST or FLANN with multi-probe LSH.