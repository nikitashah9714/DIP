I = double(imread('lena_noisy.pgm'));
[row,col] = size(I);
pro = 1;
for i = 3:row-2
    for j = 3:col-2
        for p = -2:2
            for q = -2:2
                pro = pro*I(p+i,q+j);
            end
        end
        val = pro.^(1/25);
        K(i,j) = val;
        pro = 1;
    end
end
imshow(uint8(K));