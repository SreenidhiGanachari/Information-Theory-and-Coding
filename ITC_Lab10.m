clc
clear all
g=input('Enter generator matrix');
x=input('Enter message vector');
o=[];
t=[];
for i=1:width(x)
x1(2)=g(1);
x1(3)=g(2);
x1(1)=x(i);
g=[x(i) x1(2) x1(3)];
o(i)=xor(g(1),xor(g(2),g(3)));
o1(i)=xor(g(1),g(3));
end
for i=1:width(x)
t=[t o(i) o1(i)];
end
disp('The Convolutional code: ');
disp(t);