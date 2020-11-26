% Construct a webcam object
camObj = webcam(2);

% Preview a stream of image frames.
preview(camObj);

% Acquire and display a single image frame.
img = snapshot(camObj);
imshow(img);