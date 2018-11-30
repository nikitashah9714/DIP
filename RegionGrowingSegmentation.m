I = double(imread('lena.pgm'));
[row,col] = size(I);
s1 = 50;
s2 = 100;
s3 = 150;
con = 50;
for i = 1 : row
    for j = 1 : col
        if I(i,j)<=s1+con && I(i,j)>=s1-con
            Out(i,j) = s1;
        elseif I(i,j)<=s2+con && I(i,j)>=s2-con
            Out(i,j) = s2;
        else
            Out(i,j) = s3;
        end
    end
end
imshow(uint8(Out));
