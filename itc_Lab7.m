clc
clear all
p=input('Parity matrix:');
m=input('Enter message');
c1=(m(1)*p(1,1));
c2=(m(1)*p(2,1));
c3=(m(1)*p(3,1));
for j=2:3
c1=xor(c1,(m(j)*p(j,1)))
end
for j=2:3
c2=xor(c2,(m(j)*p(j,2)))
end
for j=2:3
c3=xor(c3,(m(j)*p(j,3)))
end
c11=[c1 c2 c3];
disp('The codeword is')
code=cat(2,m,c11);
code