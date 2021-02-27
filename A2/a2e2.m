figure(1);
ex2(im2double(imread('venice1.jpg')));
figure(2);
ex2(im2double(imread('snow1.jpg')));
figure(3);
ex2(im2double(imread('my_img1.jpg')));
figure(4);
ex2(im2double(imread('my_img2.jpg')));

% Took the images in Figures 3 and 4 by myself

function ex2(I)
    r = I(:,:,1);
    g = I(:,:,2);
    b = I(:,:,3);

    sepia_r = r*0.393 + g*0.769 + b*0.189;
    sepia_g = r*0.349 + g*0.686 + b*0.168;
    sepia_b = r*0.272 + g*0.534 + b*0.131;
    I1 = cat(3, sepia_r, sepia_g, sepia_b);
    
    subplot(1,2,1), imshow(I);    
    subplot(1,2,2), imshow(I1);
end