figure(1);
% imhist(im2double(imread('venice1.jpg'))
ex4m1(im2double(imread('venice3.jpg')), 0.20, 0.45);
figure(2);
% imhist(im2double(imread('snow1.jpg')));
ex4m1(im2double(imread('snow3.jpg')), 0.00, 0.90);
figure(3);
% imhist(im2double(imread('my_img1.jpg')));
ex4m1(im2double(imread('my_img1.jpg')), 0.05, 0.90);
figure(4);
% imhist(im2double(imread('my_img2.jpg')));
ex4m1(im2double(imread('my_img2.jpg')), 0.05, 0.90);

% Took the images in Figures 3 and 4 by myself

function ex4m1(I,low,high)
    rgb2hsv(I);
    V = imadjust(I(:,:,3), [low high], []);
    I1 = cat(3, I(:,:,1), I(:,:,2), V);
    hsv2rgb(I1);
    
    subplot(1,3,1), imshow(I);
    subplot(1,3,2), imshow(I1);
    subplot(1,3,3), imhist(I1);
end