clear all
clc
load( 'noise' );
%itno=14;
itno = 100 - 10;
bhat = zeros( 1, itno );
W = zeros( 1, size( bhat, 1 ) );
e = zeros( 1, itno );
voice = e;
out = e;
start = 1;
end1 = 100;
signal = yout( start:end1, 2 );
noise = yout( start:end1, 1 );
[out,W,bhat] = noise_cancel_wrapper_fixpt_fil( signal, noise, out, W, bhat );
voice = out;
start = 101;
end1 = 200;
while (end1<length( yout ) - 10)
    signal = yout( start:end1, 2 );
    noise = yout( start:end1, 1 );
    % b0hat=transpose(zeros(1,140));
    [out,W,bhat] = noise_cancel_wrapper_fixpt_fil( signal, noise, out, W, bhat );
    voice = [ voice, out ];
    start = end1 + 1;
    end1 = end1 + 100;
end
voice = audioplayer( out, 11025 );
play( voice );
