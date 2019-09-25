function m = sliceit(v,nwind,noverlab)
    m = [];
    N = length(v);
    sr = (nwind-noverlab);
    ncol = floor((N-noverlab)/sr);
    for i = 0:ncol-1
        m = [m v((i*sr)+1:nwind)'];
    end
end
