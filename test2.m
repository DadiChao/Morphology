% image analysis and understanding experiment 2
% written by zhao dadi, 143732, southeast university

clc
clear
close all

% load image
fileName='/Users/Devin/Documents/Image/Experiment/imagetech(512x256x8).bmp';
iorg=imread(fileName);
% rotate
irot=imrotate(iorg,60);
irot(irot==0)=255;
% move
imov=move(irot,[0.6,-0.4]);

figure(1)
subplot(1,3,1);imshow(iorg);title('Original Image');
subplot(1,3,2);imshow(irot);title('Rotate Image');
subplot(1,3,3);imshow(imov);title('Moved Image');