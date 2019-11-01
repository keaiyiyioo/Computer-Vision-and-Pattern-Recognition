function [sh] = sharpenImage(im)
%his is a function for sharpening
%   Detailed explanation goes here
    im=imread(im);
    %im=imread('image.jpg');
    h = padarray(2,[2 2]) - fspecial('gaussian' ,5,5);
    sharpened = imfilter(im,h); 
    subplot(1,2,1),imshow(im);
    xlabel('a)orignal');
    subplot(1,2,2),imshow(sharpened); 
    xlabel('b)sharpened');
end
