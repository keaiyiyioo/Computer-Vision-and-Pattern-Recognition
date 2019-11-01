function [histogram]= histImg(im)
%This is a function for showing Histogram and Cumulative Histogram
%   Detailed explanation goes here
    im = imread(im);
    %im=imread('image.jpg');
    gray=rgb2gray(im);
    [i,j]=size(gray); 
    gp=zeros(1,256);
    sgp=zeros(1,256);
    for p=0:255 
         gp(p+1)=length(find(gray==p))/(i*j);
    end
    for n=1:256 
        for m=1:n    
            sgp(n)=sgp(n)+gp(m); 
        end
    end
    figure;
    subplot(121);bar(0:255,gp,'b');    
    title('Histogram'); 
    subplot(122);bar(0:255,sgp,'r');    
    title('Cumulative Histogram'); 
end
