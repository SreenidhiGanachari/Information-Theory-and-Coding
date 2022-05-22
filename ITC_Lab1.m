clc
syms w t

%Basic Commands
x=[1 2 5 1]
z =[1 2 3 ; 5 1 4 ;3 2 1]
y=x'
t=1:10

% 27
%Q1
x=rand(3,4)
y=zeros(3,4)
z=ones(3,4)
I=eye(3,4)

%Q2
U=rand(6,6)
U(3,:)=[]
U(:,5)=[]

% 28
x=magic(3);
bar(x)
grid

%29

x=[0,0;3,5]
d=pdist(x,"euclidean")
r=5;
if(d<r)
   disp("The point lies inside the circle")
elseif(d==r)
    disp("The point lies on the circle")
else
disp("The point lies outside the circle")
end

%Q1
b=1
while(b)<=10
    disp(b)
    b=b+1;
end

%Q2
b=1
while(b)<=40
    disp(b)
    b=b+2;
end

%Q3
b=1
while b<=20
    disp(b^2)
    b=b+1;
end
%Q4
l=1:10
l
l=1:2:40
l
ll=sort(l,'descend')
ll




















































