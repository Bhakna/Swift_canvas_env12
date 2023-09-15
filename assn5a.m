# this is a script for assn5a

clc
clear all
close all
pkg load image # download pkg image first
origin_img = imread("simple_face.jpg");
origin_img = rgb2gray(origin_img);

# the following code is done for box blur kernel of 9x9 size

myblur=ones(5,5)/25; # box blur
figure(4)

subplot(2,2,1)
imshow(origin_img)
title("Original Picture");

subplot(2,2,2)
arr=origin_img;

for i=[1:1:5]
  arr = convol(myblur,arr); # my function for convolutions7
end
final_arr = my_colors(5, arr); % number of shades of black
final_arr = sq_strokes(8, final_arr); % brush size in mm

imshow(final_arr)
title("Box Blur 5x5 times 10");

subplot(2,2,3)
imhist(origin_img)

subplot(2,2,4)
imhist(final_arr)

