figure(1);
ex1m2(im2double(imread('venice1.jpg')));
figure(2);
ex1m2(im2double(imread('snow1.jpg')));
figure(3);
ex1m2(im2double(imread('my_img1.jpg')));
figure(4);
ex1m2(im2double(imread('my_img2.jpg')));

% Took the images in Figures 3 and 4 by myself

function ex1m2(image)
    r = image(:,:,1);
    g = image(:,:,2);
    b = image(:,:,3);
    I2 = (r+g+b)/3;
    
    subplot(1,2,1), imshow(image);
    subplot(1,2,2), imshow(I2);
end