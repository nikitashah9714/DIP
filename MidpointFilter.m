I = double(imread('lena_noisy.pgm'));
[row,col] = size(I);
w = 1;
for i = 3:row-2
    for j = 3:col-2
        for p = -2:2
            for q = -2:2
                K(w) = I(p+i,q+j);
                w = w + 1;
            end
        end
        w = 1;
        A = sort(K);
        min = A(1);
        max = A(9);
        Out(i,j) = 1/2 * (min+max);
     end
end
imshow(uint8(Out));