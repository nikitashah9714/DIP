I=imread('lena.pgm');
[row,col] = size(I)
for i = 1 : row
    J(i+1,1) = I(i,1);
    J(i+1,col+2) = I(i,col);
end
for i = 1 : col
    J(1,i+1) = I(1,i);
    J(row+2,i+1) = I(row,i);
end
J(1,1) = I(2,2);
J(row+2,1) = I(row,2);
J(1,col+2) = I(1,col);
J(row+2,col+2) = I(row,col);
for i = 1:row
    for j = 1:col
        J(i,j) = I(i,j);
    end
end
[r,c] = size(J) 
for i = 2:r-1
    for j =2:c-1
        B(i-1,j-1) = (-1.0)*double(J(i-1,j-1))+(-2.0)*double(J(i-1,j))+(-1.0)*double(J(i-1,j+1))+double(J(i+1,j-1))+2.0*double(J(i+1,j))+double(J(i+1,j+1));
    end
end
for i = 2:r-1
    for j = 2:c-1
        C(i-1,j-1) = (-1.0)*double(J(i-1,j-1))+(-2.0)*double(J(i,j-1))+(-1.0)*double(J(i+1,j-1))+double(J(i-1,j+1))+2.0*double(J(i,j+1))+double(J(i+1,j+1));
    end
end
for i = 1:row
    for j = 1:col
        O(i,j) = abs(B(i,j))+abs(C(i,j));
    end
end
    
figure(1),imshow((I));
figure(2),imshow(uint8(B));
figure(3),imshow(uint8(C));
figure(4),imshow(uint8(O));
imwrite(uint8(O),'Sobel.pgm');