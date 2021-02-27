figure(1);
ex3(im2double(imread('venice2.jpg')));
figure(2);
ex3(im2double(imread('snow2.jpg')));
figure(3);
ex3(im2double(imread('my_img1.jpg')));
figure(4);
ex3(im2double(imread('my_img2.jpg')));

% Took the images in Figures 3 and 4 by myself

function ex3(I)
    r = I(:,:,1);
    g = I(:,:,2);
    b = I(:,:,3);

    uR = mean2(r);
    uG = mean2(g);
    uB = mean2(b);

    u = mean([uR, uG, uB]);

    r = (r/uR)*u;
    g = (g/uG)*u;
    b = (b/uB)*u;
    
    I1 = cat(3, r, g, b);
    
    subplot(1,2,1), imshow(I);    
    subplot(1,2,2), imshow(I1);
end

% The algorithm did its job for the two provided pictures, balancing their 
% colors really well. I was curious what it would do to my two photos in 
% terms of balancing, and it hardly changed the photos. 