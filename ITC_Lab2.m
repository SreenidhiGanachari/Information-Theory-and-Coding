
%Aim : To find entropy and information of given source- 19BCE7230

clc;
clear all;
k=input("Enter number of elements");
p=input("Enter the probabilities");
sum=0;
for n=1:k
    H=sum+(p(k)*(log(1/p(k))/log(2)));
    sum=H;
end
disp('H(x)=');
disp(H);

for n=1:k
    I=log(1/p(k))/log(2);
end
disp('I(x)=');
disp(I);

