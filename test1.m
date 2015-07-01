% image analysis and understanding experiment 1
% written by zhao dadi, 143732, southeast university

clc
clear
close all

%% load image
fileName='/Users/Devin/Documents/Image/Experiment/imagetech(512x256x8).bmp';
%fileName='/Users/Devin/Documents/Image/Experiment/ipexrice_01g.jpg';
%thresholding_value logo:200 rice:120
thresholding_value=200;
iorg=imread(fileName);
[height,width]=size(iorg);
% threshold
ithr=255*(0*iorg+1);
for i=1:height
    for j=1:width
        if iorg(i,j)<thresholding_value
            ithr(i,j)=1;
        end
    end
end

%% morphology
f=zeros(3);
% erosion
iorg_ers=erosion(iorg,f);
ithr_ers=erosion(ithr,f);
% dilation
iorg_dil=dilation(iorg,f);
ithr_dil=dilation(ithr,f);
% opening
iorg_open=opening(iorg,f,1);
ithr_open=opening(ithr,f,1);
% closing
iorg_close=closing(iorg,f,1);
ithr_close=closing(ithr,f,1);

figure(1)
subplot(5,2,1);imshow(iorg);title('Original Image');
subplot(5,2,2);imshow(ithr);title('Thresholding Image');

subplot(5,2,3);imshow(iorg_ers);title('Erosion of Original Image');
subplot(5,2,4);imshow(ithr_ers);title('Erosion of Thresholding Image');

subplot(5,2,5);imshow(iorg_dil);title('Dilation of Original Image');
subplot(5,2,6);imshow(ithr_dil);title('Dilation of Thresholding Image');

subplot(5,2,7);imshow(iorg_open);title('Opening of Original Image');
subplot(5,2,8);imshow(ithr_open);title('Opening of Thresholding Image');

subplot(5,2,9);imshow(iorg_close);title('Closing of Original Image');
subplot(5,2,10);imshow(ithr_close);title('Closing of Thresholding Image');