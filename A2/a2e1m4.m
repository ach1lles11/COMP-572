figure(1);
ex1m4(im2double(imread('venice1.jpg')));
figure(2);
ex1m4(im2double(imread('snow1.jpg')));
figure(3);
ex1m4(im2double(imread('my_img1.jpg')));
figure(4);
ex1m4(im2double(imread('my_img2.jpg')));

% Took the images in Figures 3 and 4 by myself

function ex1m4(image) 
    I4 = rgb2hsv(image);
    I4(:,:,2) = 0;
    I4 = hsv2rgb(I4);
    
    subplot(1,2,1), imshow(image);    
    subplot(1,2,2), imshow(I4);
end

% Honestly, I'm super happy with the results of the Sepia toning. It turned
% out way better than expected on images I took myself. The original
% balance and images of the original photos are preserved nicely.