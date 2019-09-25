function s = spec1(spch,fs,dwind,wind,dur)
    nwind = dwind * fs;
    novrlab = nwind -(dur * fs);
    s = spectrogram(spch,nwind,novrlab,wind);
end
