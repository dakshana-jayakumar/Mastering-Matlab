clc;clear;
camObj = webcam(4);
preview(camObj);
 while(1)
    img = snapshot(camObj);
    [msg] = readBarcode(img);
    if msg==''
        continue;
    else
        clc;
        disp(msg);
        break;
    end
    imshow(img);pause(1);
 end