---
title: "Linear Dynamic Systems Final Project"
# date: 2021-03-29T15:34:30-04:00
categories:
  - Robotics
tags:
  - State Estimation
output: 
  - html_document:
    - includes:
      - after_body: "/assets/images/portfolio/dt-kf/avg_error.html"
---

In this project I used empirically-obtained lab data to construct four different models of a system, each with a different number of states (n<sub>s</sub> = 6, 7, 10, 20). 

Proceeding with an identified model of sufficient accuracy and efficiency, n<sub>s</sub> = 7, the following tasks were completed:
- Identify the transmission zeros of the MIMO model and zeros of each channel
- Construct a block diagram from analysis of the individual channels
- Impulse response identification from white noise inputs
- H<sub>2</sub> norm analysis of the identified model
- H<sub>∞</sub> norm analysis of the identified model

## The Report
<object data="/assets/images/portfolio/270A/270A_report_A.Lopez_final.pdf" type="application/pdf" width="700px" height="700px">
    <embed src="/assets/images/portfolio/270A/270A_report_A.Lopez_final.pdf">
        <p>This browser does not support PDFs. Please download the PDF to view it: <a href="http://yoursite.com/the.pdf">Download PDF</a>.</p>
    </embed>
</object>