%multout.m
%output expression for three dimensional ANN
P=[0.1 0.5; 0.3 -0.2]; %known input vector data
S1=2; S2=3; S3=5; %known note number in each dimension
[R, Q]=size(P); %calculate row and column for inout vector
[W1, B1]=rands(S1, R); 
[W2, B2]=rands(S2, S1);
[W3, B3]=rands(S3, S2);
B10=cat(2,B1,B1); %we use B10 to merge S1*1 B1 matrix into one
n1=W1*P+B10;
A1=hardlims(n1)
B20=cat(2,B2,B2);
n2=W2*P+B20;
A2=logsig(n2)
B30=cat(2,B3,B3);
n3=W3*A2+B30;
A3=purelin(n3)