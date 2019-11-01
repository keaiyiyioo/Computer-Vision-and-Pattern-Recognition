function [sm] = smoothImg(im,hsize,sigma)
%This is a function for smoothing
%   Detailed explanation goes here
    im=imread(im);
    %im=imread('image.jpg');
    %hsize = 10;
    %sigma = 5;
    h=fspecial('gaussian',hsize,sigma);
    outim =imfilter(im,h);
    figure, imshow(outim);
end
