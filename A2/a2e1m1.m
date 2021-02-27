figure(1);
ex1m1(im2double(imread('venice1.jpg')));
figure(2);
ex1m1(im2double(imread('snow1.jpg')));
figure(3);
ex1m1(im2double(imread('my_img1.jpg')));
figure(4);
ex1m1(im2double(imread('my_img2.jpg')));

% Took the images in Figures 3 and 4 by myself

function ex1m1(image)
    I1 = rgb2gray(image);
    
    subplot(1,2,1), imshow(image);
    subplot(1,2,2), imshow(I1);
end

% I like the grayscale of the first method the best. I think it preserves the contrast 
% of the images the best out of the four methods.
