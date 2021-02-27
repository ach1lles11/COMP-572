figure(1);
ex4m2(im2double(imread('venice3.jpg')));
figure(2);
ex4m2(im2double(imread('snow3.jpg')));
figure(3);
ex4m2(im2double(imread('my_img1.jpg')));
figure(4);
ex4m2(im2double(imread('my_img2.jpg')));

% Took the images in Figures 3 and 4 by myself

function ex4m2(I)
    I1 = histeq(I);
    
    subplot(1,3,1), imshow(I);
    subplot(1,3,2), imshow(I1);
    subplot(1,3,3), imhist(I1);
end

% I think that the second method worked out the best. The colors have 
% great contrast and are also decently well blended together.