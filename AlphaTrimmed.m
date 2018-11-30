I = double(imread('lena_noisy.pgm'));
[row,col] = size(I);
sum = 0;
count = 9;
for i = 3:row-2
    for j = 3:col-2
        for p = -2:2
            for q = -2:2
                if I(p+i,q+j) ~= 0 || I(p+i,q+j) ~= 255
                         sum = sum+I(p+i,q+j);
                         count = count-1;
                end
            end
        end
        avg = sum/(25-count);
        K(i,j) = avg;
        sum = 0;
        count = 9;
    end
end
imshow(uint8(K));