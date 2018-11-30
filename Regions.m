i = imread('lena.pgm');
[row,col] = size(i);
 for x = 1:row
     for y = 1:col
         if i(x,y)<=50
             i(x,y) = 50;
         elseif i(x,y)<=150
                 i(x,y) = 100;
             else
             i(x,y) = 200;
          end
     end
 end
 imshow(i);