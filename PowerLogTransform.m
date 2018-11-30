i = imread('lena.pgm');
[row,col] = size(i);
c = 1
gamma = 1.2
 for x = 1:row
     for y = 1:col
        i(x,y) = c * (double(i(x,y)).^gamma);
     end
 end
 imshow(uint8(i));