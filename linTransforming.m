function [ t ] = linTransforming(im,k,m)
%This is a function for linear transformation
%   Detailed explanation goes here
    im = imread(im); 
    %im=imread('image.jpg');
    %k=2;
    %m=5;
    [Y,X,Z]=size(im);
    t=size(im);
    for z=1:Z
        for y=1:Y
            for x=1:X
                t(y,x,z)=m*im(y,x,z)+k;
            end
        end
    end
    imshow(uint8(t));
end

