i = imread('lena.pgm');
[row,col] = size(i);
c = 40
 for x = 1:row
     for y = 1:col
        i(x,y) = c * log(double(i(x,y))+1);
     end
 end
 imshow(uint8(i));