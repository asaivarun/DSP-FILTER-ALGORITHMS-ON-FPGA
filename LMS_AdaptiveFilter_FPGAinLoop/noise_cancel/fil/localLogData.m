function localLogData(out_e, out_W, out_bhat, out_ref_e, out_ref_W, out_ref_bhat)
global gEMLSimLogVal_out_e;
global gEMLSimLogVal_out_W;
global gEMLSimLogVal_out_bhat;
global gEMLSimLogVal_out_ref_e;
global gEMLSimLogVal_out_ref_W;
global gEMLSimLogVal_out_ref_bhat;
global gEMLSimLogRunIdx;
persistent maxIdx;

if isempty(gEMLSimLogRunIdx)
	gEMLSimLogRunIdx = 1;
	maxIdx = 1;
	if isstruct(out_e)
		gEMLSimLogVal_out_e = out_e;
	elseif isscalar(out_e)
		gEMLSimLogVal_out_e = out_e;
	elseif iscolumn(out_e)
		gEMLSimLogVal_out_e = out_e.';
	elseif isrow(out_e)
		gEMLSimLogVal_out_e = out_e;
	else
		gEMLSimLogVal_out_e = {out_e};
	end

	if isstruct(out_W)
		gEMLSimLogVal_out_W = out_W;
	elseif isscalar(out_W)
		gEMLSimLogVal_out_W = out_W;
	elseif iscolumn(out_W)
		gEMLSimLogVal_out_W = out_W.';
	elseif isrow(out_W)
		gEMLSimLogVal_out_W = out_W;
	else
		gEMLSimLogVal_out_W = {out_W};
	end

	if isstruct(out_bhat)
		gEMLSimLogVal_out_bhat = out_bhat;
	elseif isscalar(out_bhat)
		gEMLSimLogVal_out_bhat = out_bhat;
	elseif iscolumn(out_bhat)
		gEMLSimLogVal_out_bhat = out_bhat.';
	elseif isrow(out_bhat)
		gEMLSimLogVal_out_bhat = out_bhat;
	else
		gEMLSimLogVal_out_bhat = {out_bhat};
	end

	if isstruct(out_ref_e)
		gEMLSimLogVal_out_ref_e = out_ref_e;
	elseif isscalar(out_ref_e)
		gEMLSimLogVal_out_ref_e = out_ref_e;
	elseif iscolumn(out_ref_e)
		gEMLSimLogVal_out_ref_e = out_ref_e.';
	elseif isrow(out_ref_e)
		gEMLSimLogVal_out_ref_e = out_ref_e;
	else
		gEMLSimLogVal_out_ref_e = {out_ref_e};
	end

	if isstruct(out_ref_W)
		gEMLSimLogVal_out_ref_W = out_ref_W;
	elseif isscalar(out_ref_W)
		gEMLSimLogVal_out_ref_W = out_ref_W;
	elseif iscolumn(out_ref_W)
		gEMLSimLogVal_out_ref_W = out_ref_W.';
	elseif isrow(out_ref_W)
		gEMLSimLogVal_out_ref_W = out_ref_W;
	else
		gEMLSimLogVal_out_ref_W = {out_ref_W};
	end

	if isstruct(out_ref_bhat)
		gEMLSimLogVal_out_ref_bhat = out_ref_bhat;
	elseif isscalar(out_ref_bhat)
		gEMLSimLogVal_out_ref_bhat = out_ref_bhat;
	elseif iscolumn(out_ref_bhat)
		gEMLSimLogVal_out_ref_bhat = out_ref_bhat.';
	elseif isrow(out_ref_bhat)
		gEMLSimLogVal_out_ref_bhat = out_ref_bhat;
	else
		gEMLSimLogVal_out_ref_bhat = {out_ref_bhat};
	end

	gEMLSimLogRunIdx = gEMLSimLogRunIdx+1;
	return

end

if gEMLSimLogRunIdx > maxIdx
	maxIdx = 2 * maxIdx;
	if(iscell(gEMLSimLogVal_out_e))
		gEMLSimLogVal_out_e(maxIdx, :) = {gEMLSimLogVal_out_e{1}};
	else
		gEMLSimLogVal_out_e(maxIdx, :) = gEMLSimLogVal_out_e(1);
	end
	if(iscell(gEMLSimLogVal_out_W))
		gEMLSimLogVal_out_W(maxIdx, :) = {gEMLSimLogVal_out_W{1}};
	else
		gEMLSimLogVal_out_W(maxIdx, :) = gEMLSimLogVal_out_W(1);
	end
	if(iscell(gEMLSimLogVal_out_bhat))
		gEMLSimLogVal_out_bhat(maxIdx, :) = {gEMLSimLogVal_out_bhat{1}};
	else
		gEMLSimLogVal_out_bhat(maxIdx, :) = gEMLSimLogVal_out_bhat(1);
	end
	if(iscell(gEMLSimLogVal_out_ref_e))
		gEMLSimLogVal_out_ref_e(maxIdx, :) = {gEMLSimLogVal_out_ref_e{1}};
	else
		gEMLSimLogVal_out_ref_e(maxIdx, :) = gEMLSimLogVal_out_ref_e(1);
	end
	if(iscell(gEMLSimLogVal_out_ref_W))
		gEMLSimLogVal_out_ref_W(maxIdx, :) = {gEMLSimLogVal_out_ref_W{1}};
	else
		gEMLSimLogVal_out_ref_W(maxIdx, :) = gEMLSimLogVal_out_ref_W(1);
	end
	if(iscell(gEMLSimLogVal_out_ref_bhat))
		gEMLSimLogVal_out_ref_bhat(maxIdx, :) = {gEMLSimLogVal_out_ref_bhat{1}};
	else
		gEMLSimLogVal_out_ref_bhat(maxIdx, :) = gEMLSimLogVal_out_ref_bhat(1);
	end
end

if isstruct(out_e)
	gEMLSimLogVal_out_e(gEMLSimLogRunIdx, :) = out_e;
elseif isscalar(out_e)
	gEMLSimLogVal_out_e(gEMLSimLogRunIdx, :) = out_e;
elseif iscolumn(out_e)
	gEMLSimLogVal_out_e(gEMLSimLogRunIdx, :) = out_e.';
elseif(isrow(out_e))
	gEMLSimLogVal_out_e(gEMLSimLogRunIdx, :) = out_e;
else
	gEMLSimLogVal_out_e(gEMLSimLogRunIdx, :) = {out_e};
end

if isstruct(out_W)
	gEMLSimLogVal_out_W(gEMLSimLogRunIdx, :) = out_W;
elseif isscalar(out_W)
	gEMLSimLogVal_out_W(gEMLSimLogRunIdx, :) = out_W;
elseif iscolumn(out_W)
	gEMLSimLogVal_out_W(gEMLSimLogRunIdx, :) = out_W.';
elseif(isrow(out_W))
	gEMLSimLogVal_out_W(gEMLSimLogRunIdx, :) = out_W;
else
	gEMLSimLogVal_out_W(gEMLSimLogRunIdx, :) = {out_W};
end

if isstruct(out_bhat)
	gEMLSimLogVal_out_bhat(gEMLSimLogRunIdx, :) = out_bhat;
elseif isscalar(out_bhat)
	gEMLSimLogVal_out_bhat(gEMLSimLogRunIdx, :) = out_bhat;
elseif iscolumn(out_bhat)
	gEMLSimLogVal_out_bhat(gEMLSimLogRunIdx, :) = out_bhat.';
elseif(isrow(out_bhat))
	gEMLSimLogVal_out_bhat(gEMLSimLogRunIdx, :) = out_bhat;
else
	gEMLSimLogVal_out_bhat(gEMLSimLogRunIdx, :) = {out_bhat};
end

if isstruct(out_ref_e)
	gEMLSimLogVal_out_ref_e(gEMLSimLogRunIdx, :) = out_ref_e;
elseif isscalar(out_ref_e)
	gEMLSimLogVal_out_ref_e(gEMLSimLogRunIdx, :) = out_ref_e;
elseif iscolumn(out_ref_e)
	gEMLSimLogVal_out_ref_e(gEMLSimLogRunIdx, :) = out_ref_e.';
elseif(isrow(out_ref_e))
	gEMLSimLogVal_out_ref_e(gEMLSimLogRunIdx, :) = out_ref_e;
else
	gEMLSimLogVal_out_ref_e(gEMLSimLogRunIdx, :) = {out_ref_e};
end

if isstruct(out_ref_W)
	gEMLSimLogVal_out_ref_W(gEMLSimLogRunIdx, :) = out_ref_W;
elseif isscalar(out_ref_W)
	gEMLSimLogVal_out_ref_W(gEMLSimLogRunIdx, :) = out_ref_W;
elseif iscolumn(out_ref_W)
	gEMLSimLogVal_out_ref_W(gEMLSimLogRunIdx, :) = out_ref_W.';
elseif(isrow(out_ref_W))
	gEMLSimLogVal_out_ref_W(gEMLSimLogRunIdx, :) = out_ref_W;
else
	gEMLSimLogVal_out_ref_W(gEMLSimLogRunIdx, :) = {out_ref_W};
end

if isstruct(out_ref_bhat)
	gEMLSimLogVal_out_ref_bhat(gEMLSimLogRunIdx, :) = out_ref_bhat;
elseif isscalar(out_ref_bhat)
	gEMLSimLogVal_out_ref_bhat(gEMLSimLogRunIdx, :) = out_ref_bhat;
elseif iscolumn(out_ref_bhat)
	gEMLSimLogVal_out_ref_bhat(gEMLSimLogRunIdx, :) = out_ref_bhat.';
elseif(isrow(out_ref_bhat))
	gEMLSimLogVal_out_ref_bhat(gEMLSimLogRunIdx, :) = out_ref_bhat;
else
	gEMLSimLogVal_out_ref_bhat(gEMLSimLogRunIdx, :) = {out_ref_bhat};
end

gEMLSimLogRunIdx = gEMLSimLogRunIdx+1;

