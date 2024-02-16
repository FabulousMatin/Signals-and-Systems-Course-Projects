# Signals and System Projects
- [CA1: Introducion, Linear Regression and Distance Estimation](#ca1-introducion-linear-regression-and-distance-estimation)
- [CA2: Veichle Registration Plate Detection and OCR ](#ca2-veichle-registration-plate-detection-and-ocr)
- [CA3: Encoding Text in Image and Image Detection](#ca3-encoding-text-in-image-and-image-detection)
- [CA4: Encoding Text in Signal and Distance Estimation](#ca4-encoding-text-in-signal-and-distance-estimation)
- [CA5: Encoding Text in Signal Using Fourier Transforms](#ca5-encoding-text-in-signal-using-fourier-transforms)
- [CA6: Signal Detection](#ca6-signal-detection)
- [CA7: Differential Equations and Simulink](#ca7-differential-equations-and-simulink)


<ins>NOTE: Some voice dataset are not uploded.</ins>

## CA1: Introducion, Linear Regression and Distance Estimation 
Implementation of linear regression and gradient descent.

Estimating distance using template matching. by shifting sent signal and calculating correlation of of it and received signal we can estimate distance of an object. To simulate real situtaions, a normal-distributed noise will be added.

## CA2: Veichle Registration Plate Detection and OCR 
This project has two main part:

1. letters of a veichle plate detection(OCR)
this is done with template matching. Calculating correlation of prepeared dataset and letters. 

2. veichle plate detection
This can be done by edge detection, template matching, color diagrams or a mixed solution.

details can be seen in `report.pdf`.

## CA3: Encoding Text in Image and Image Detection
Encoding a message in an image by creating mapset, bit string and etc.

image detections is same as `CA2`.

## CA4: Encoding Text in Signal and Distance Estimation
This time message will be encoded in signals.

distance estimating is done using convoltion.

## CA5: Encoding Text in Signal Using Fourier Transforms
Like previous CA, messages are encoded in signals but they are encoded in fourier space.

## CA6: Signal Detection
send and receive multiple signals. Detect both number of received signals and frequency of them. This is acheived with fourier transforms.

## CA7: Differential Equations and Simulink
Simulation of differential equations using diagrams in `Simulink`.


