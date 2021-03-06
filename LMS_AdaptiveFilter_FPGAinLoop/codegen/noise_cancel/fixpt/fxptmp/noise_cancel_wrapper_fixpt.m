%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                          %
%           Generated by MATLAB 9.2 and Fixed-Point Designer 5.4           %
%                                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [e,W,bhat] = noise_cancel_wrapper_fixpt(s,n,e,W,bhat)
    fm = get_fimath();
    s_in = fi( s, 1, 14, 17, fm );
    n_in = fi( n, 1, 14, 15, fm );
    e_in = fi( e, 1, 14, 17, fm );
    W_in = fi( W, 1, 14, 15, fm );
    bhat_in = fi( bhat, 1, 14, 17, fm );
    [e_out,W_out,bhat_out] = noise_cancel_fixpt( s_in, n_in, e_in, W_in, bhat_in );
    e = double( e_out );
    W = double( W_out );
    bhat = double( bhat_out );
end

function fm = get_fimath()
	fm = fimath('RoundingMethod', 'Floor',...
	     'OverflowAction', 'Wrap',...
	     'ProductMode','FullPrecision',...
	     'MaxProductWordLength', 128,...
	     'SumMode','FullPrecision',...
	     'MaxSumWordLength', 128);
end
