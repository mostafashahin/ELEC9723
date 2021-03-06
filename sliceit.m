function m = sliceit(v,nwind,noverlab)
    m = [];
    N = length(v);
    sr = (nwind-noverlab);
    ncol = floor((N-noverlab)/sr);
    for i = 0:ncol-1
        indx = (i*sr)+1;
        col = v(indx:indx+nwind-1);
        m = [m col];
    end
end
