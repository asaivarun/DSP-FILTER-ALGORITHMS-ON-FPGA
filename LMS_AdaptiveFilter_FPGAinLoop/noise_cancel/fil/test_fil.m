clear all
clc
load( 'noise' );
%itno=14;
start = 1;
end1 = 100;
signal = yout( start:end1, 2 );
noise = yout( start:end1, 1 );
[out,W,bhat] = noise_cancel_wrapper_fixpt_fil( signal, noise );
start = 101;
end1 = 200;
%while(end1<length(yout)-6)
signal = yout( start:end1, 2 );
noise = yout( start:end1, 1 );
% b0hat=transpose(zeros(1,140));
%[out,W,bhat]=noise_cancel(signal,noise,out,W,bhat);
% voice=[voice out];
% start=end1;
% end1=end1+20;
%end
voice = audioplayer( out, 11025 );
play( voice );
