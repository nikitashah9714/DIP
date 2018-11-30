I = double(imread('lena_noisy.pgm'));
[row,col] = size(I);
sum = 0;
for i = 3:row-2
    for j = 3:col-2
        for p = -2:2
            for q = -2:2
                sum = sum+I(p+i,q+j);
            end
        end
        avg = sum/25;
        K(i,j) = avg;
        sum = 0;
    end
end
imshow(uint8(K));