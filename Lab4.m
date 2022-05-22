clc
clear all
p=input('Enter probabilities');
n=input('Enter symbols');
p1=sort(p,'descend');
n=1:length(p);
for i=1:3
    p2(:,i)=p1(:,i);
end
p2(1,4)=p1(1,4)+p1(1,5);
p2=sort(p2,'descend');
p2

for i=1:2
    p3(:,i)=p2(:,i);
end
p3(1,3)=p2(1,3)+p2(1,4);
p3=sort(p3,'descend');
p3

p4(1,1)=p3(1,1)
p4(1,2)=p3(1,2)+p3(1,3)
p4=sort(p4,'descend');
p4
[dict,avglen]=huffmandict(n,p1);
disp('The average code word length is')
disp(avglen);
h=0;
for i=1:length(p1)
    h=h+p(i)*log2(1/(p(i)));
end
disp('Entropy is');
disp(h);

disp('Effeciency')
disp((h/avglen)*100);
s=(h/avglen)
disp('Redundancy')
disp((1-s)*100)
code=huffmanenco(n,dict);
disp('Codeword')
disp(code);
CodeWord=huffmandict(n,p1);
for i=1:5
    code1=CodeWord(i,2);
    code1
end
deco1=huffmandeco(code,dict);
disp(deco1);