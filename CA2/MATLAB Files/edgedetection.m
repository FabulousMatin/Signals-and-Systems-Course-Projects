[filename, filepath] = uigetfile({'*.jpg;*.png;*.bmp', 'Image Files (*.jpg, *.png, *.bmp)'}, 'Select an Image');

imagepath = fullfile(filepath, filename);
picture = imread(imagepath);

grayImage = rgb2gray(picture);
picture_bitmap = ~imbinarize(grayImage);

edgeImage = edge(picture_bitmap, 'Canny');
subplot(1,3,1);
imshow(edgeImage);
title('edges');

se = strel('rectangle', [5, 5]);  % Structuring element for dilation and erosion
dilatedImage = imdilate(edgeImage, se);
subplot(1,3,2);
imshow(dilatedImage);
title('thicken edges');

filtered = bwareaopen(dilatedImage, 2000);
subplot(1,3,3);
imshow(filtered);
title('removed noises');

