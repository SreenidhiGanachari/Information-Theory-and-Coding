%%Write a MATLAB program for arithmetic encoding and find the tag value forthe string BACBA , if the probabilities are 0.5 , 0.3 , 0.2


clc;
clear all;
prompt=' Enter the Arithmetic Word: '; str=input(prompt,'s');
arith=str;
length1=size(str);
len=length1(2);
count=[];
for i=1:len-1
count(i)=1;
for j=i+1:len
if str(i)==str(j)
str(j)=0;
count(i)=count(i)+1;
end
end
end
if(str(len)~=0)
count(len)=1;
end
j=1;

p=input('Enter the probabilities');
for i=1:len
if(str(i)~=0)
new(j)=str(i);

if(j>1)

ar(j)=ar(j-1)+p(j);
else
ar(j)=p(j);
end
disp(['Arithmetic Probability for ',str(i),' is : ',num2str(p(j))]);
j=j+1;
end
end
arithmetic=size(new);
l=[];u=[];
l(1)=0;
u(1)=ar(1);
for i=2:len
for j=1:arithmetic(2)
if(arith(i)==new(j))
l(i)=l(i-1)+(u(i-1)-l(i-1))*(ar(j)-p(j));
u(i)=l(i-1)+(u(i-1)-l(i-1))*ar(j);
end
end
end
tag=(l(i)+u(i))/2;
disp(['Tag Value : ',num2str(tag)]);
