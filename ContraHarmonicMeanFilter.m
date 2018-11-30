I = double(imread('lena_noisy.pgm'));
[row,col] = size(I);
sum1 = 0;
sum2 = 0;
Q = 2;
for i = 3:row-2
    for j = 3:col-2
        for p = -2:2
            for q = -2:2
                sum1 = sum1+ power(I(p+i,q+j),Q+1);
                sum2 = sum2+ power(I(p+i,q+j),Q);
            end
        end
        val = sum1/sum2;
        K(i,j) = val;
        sum1 = 0;
        sum2 = 0;
    end
end
imshow(uint8(K));