I = double(imread('lena_noisy.pgm'));
[row,col] = size(I);
w = 1;
for i = 2:row-1
    for j = 2:col-1
        for p = -1:1
            for q = -1:1
                K(w) = I(p+i,q+j);
                w = w+1;
            end
        end
        w = 1;
        A = sort(K);
        Out(i,j) = A(1);
    end
end
imshow(uint8(Out));