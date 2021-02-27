figure(1);
ex1m3(im2double(imread('venice1.jpg')));
figure(2);
ex1m3(im2double(imread('snow1.jpg')));
figure(3);
ex1m3(im2double(imread('my_img1.jpg')));
figure(4);
ex1m3(im2double(imread('my_img2.jpg')));

% Took the images in Figures 3 and 4 by myself

function ex1m3(image)
    r = image(:,:,1);
    g = image(:,:,2);
    b = image(:,:,3);
    I3 = (r*0.30 + g*0.59 + b*0.11)/3;
    
    subplot(1,2,1), imshow(image);
    subplot(1,2,2), imshow(I3);
end