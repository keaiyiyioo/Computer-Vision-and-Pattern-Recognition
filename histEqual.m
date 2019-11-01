function [equalization]= histEqual(im)
%This is a function for showing Histogram Equalization
%   Detailed explanation goes here
    im = imread(im);  
    %im=imread('image.jpg');
    gray=rgb2gray(im);
    [i,j]=size(gray); 
    gp=zeros(1,256);
    sgp=zeros(1,256);
    he=zeros(1,256);
    for p=0:255 
         gp(p+1)=length(find(gray==p))/(i*j);
    end
    for n=1:256 
        for m=1:n    
            sgp(n)=sgp(n)+gp(m); 
        end
    end
    for i=1:256 
        he(i)=(256/(i*j-gp(1)))*(gp(i)-gp(1));
    end 
    figure;
    bar(0:255,he,'b');    
    title('Histogram Equalization'); 
end