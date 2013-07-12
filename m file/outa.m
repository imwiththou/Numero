%outa.m
Q=4; %number of colunm
R=3; %number of row
S=5; %number of neural node
W=ones(S, R);
B=ones(S, Q);
P=ones(R, Q);
n=W*P+B;
A=tansig(n) %calculate network output
