%1.

% Read RGB image from graphics file. 
im = imread('F0_1.bmp') 

% Display image with true aspect ratio
imshow(im)

%2.
BW1 = edge(im);
imshow(BW1)

%3.
BW2 = edge(BW1,'Canny');
imshowpair(BW1,BW2,'montage')

%4.
CH = bwconvhull(BW1);
imshow(CH)

%5.
imreal = real(im);
imFiltered = imgaussfilt(imreal,5);
imshow(imFiltered)

%6.
BWFiltered = edge(imFiltered);
imshow(BWFiltered)

%7.
BW2Filtered = edge(BWFiltered,'Canny');
imshowpair(BWFiltered,BW2Filtered,'montage')

%8.
CHFiltered = bwconvhull(BWFiltered);
imshow(CHFiltered)
imshowpair(CH,CHFiltered,'montage')