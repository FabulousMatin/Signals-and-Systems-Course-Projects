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

```matlab
learning_rate = 0.3;
w = 10;
b = 10;
figure;
for i=1:100
    dw = 1/length(x) * sum((x .* (w .* x + b - y)));
    db = 1/length(x) * sum(w .* x + b - y);
    w = w - dw * learning_rate;
    b = b - db * learning_rate;
    cla;
    plot(x,y,'b.');
    hold on;
    u = -1:0.01:1;
    plot(u,w.*u+b,'r','LineWidth', 3);
    axis([-1, 1, -4, 4]);
    text(-0.9,3.5,sprintf('iterate = %d, loss = %.3f, w = %.3f, b = %.3f', i, loss(y,x,w,b), w, b),'Color','#800080');
    drawnow;
    pause(0.1)
end
```
![alt-link](./CA1/gradient%20descent.gif)

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


