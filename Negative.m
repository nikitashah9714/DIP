i = imread('lena.pgm');
[row,col] = size(i);
 for x = 1:row
     for y = 1:col
         i(x,y) = 255 - i(x,y);
     end
 end
 imshow(i);