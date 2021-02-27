figure(1);
ex5(im2double(imread('my_img1.jpg')), 3024, 4032, 800);
figure(2);
ex5(im2double(imread('my_img2.jpg')), 3024, 4032, 800);
figure(3);
ex5(im2double(imread('my_img3.jpg')), 3024, 4032, 800);

% Took all 3 photos by myself

function ex5(I, dim1, dim2, stdev) 
    % This first filter was one of my own design. Basically, I just wanted
    % to play around with the values in the photo to see if I could get
    % something I liked. I felt like the new colors I chose had almost an
    % ethereal quality to them. In order to continue with this theme, I
    % chose to increase the saturation, but not so much as to blur the
    % image.
    I1 = (I - 0.2)/0.4; 
    rgb2hsv(I1);
    h1 = I1(:,:,2)*1.2;
    I1 = cat(3, I(:,:,1), h1, I(:,:,3));
    hsv2rgb(I1);

    % This second filter was inspired by my friends who I lift with. They
    % enjoy metal music, and when I think of a metal album cover I think of
    % a red flavored album covered. I also thought the vignetting would
    % apply nicely here as well. This pair of transformations give the
    % photos an almost demonic quality.
    gauss = fspecial('gaussian', [dim1 dim2], stdev);
    norm_gauss = gauss/(max(gauss(:)));
    I2 = (I - 0.2)/0.3;
    I2 = I2 .* norm_gauss;
    I2(:,:,2) = I2(:,:,2)*0.2;
    I2(:,:,3) = I2(:,:,3)*0.2;
    
    subplot(1,3,1), imshow(I);
    subplot(1,3,2), imshow(I1);
    subplot(1,3,3), imshow(I2);    
end