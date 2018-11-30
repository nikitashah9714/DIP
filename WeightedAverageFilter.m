I = double(imread('lena_noisy.pgm'));
[row,col] = size(I);
WT = [2,2,2,2,4,2,2,2,2]
sum = 0;
s = 1;
for i = 2:row-1
    for j = 2:col-1
        for p = -1:1
            for q = -1:1
                sum = sum+(I(p+i,q+j)*WT(s));
                s= s+1;
            end
        end
        avg = sum/20;
        K(i,j) = avg;
        sum = 0;
        s = 1;
    end
end
imshow(uint8(K));