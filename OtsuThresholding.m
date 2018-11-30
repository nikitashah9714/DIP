I=imread('lena.pgm'); 
figure(1),imshow(I); 
%figure(2),imhist(I); 

n=imhist(I); 
N=sum(n); 
max=0; 

for i=1:256
    P(i)=n(i)/N; 
end

for T=2:255      
    w0=sum(P(1:T)); % Probability of class 1 (separated by threshold)
    w1=sum(P(T+1:256)); %probability of class2 (separated by threshold)
    
    u0=dot([0:T-1],P(1:T))/w0; % class mean u0
    u1=dot([T:255],P(T+1:256))/w1; % class mean u1
    
    sigma=w0*w1*((u1-u0)^2); % compute sigma i.e variance(between class)
    
    if sigma>max % compare sigma with maximum 
        max=sigma; % update the value of max i.e max=sigma
        threshold=T-1; % desired threshold corresponds to maximum variance of between class
    end
end
display(threshold);
bw=im2bw(I,threshold/255); % Convert to Binary Image
figure(3),imshow(bw); % Display the Binary Image