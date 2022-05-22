clc
clear all
y=input('Enter y');
p=input('Enter the[ parity matrix');
k=4;q=3;
ik=eye(k);
iq=eye(q);
g=cat(2,ik,p)
h=cat(2,p',iq)
s=y*h';
mv=min(s);
for i=1:length(s)
s(i)=s(i)-mv;
end
u=h';
for i=1:length(u)
if(u(i,:)==s)
break
end
end
disp("The Syndrome is found at")
disp(i)
e=zeros(1,7);
e(i)=1;
x=xor(y,e);
disp("The output code word is")
disp(x)