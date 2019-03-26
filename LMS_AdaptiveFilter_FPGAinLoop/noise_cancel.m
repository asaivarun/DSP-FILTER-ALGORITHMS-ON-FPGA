function [ e,W,bhat ] = noise_cancel( s,n,e,W,bhat)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


itno=length(s)-10;
bhat=zeros(1,itno);
W=zeros(1,size(bhat,1));
e=zeros(1,itno);
mu=1;

yhat=0;
y=0;

for i=1:itno-1
    for j=1:length(bhat(:,1))
        W(j)=n(i+length(bhat(:,1))-j);
    end
    y=s(i);
    yhat=W*bhat(:,i);
    e(i)=y-yhat;
    bhat(:,i+1)=bhat(:,i)+mu*e(i)*transpose(W);
end
end

