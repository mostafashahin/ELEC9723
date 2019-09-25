function s = spec2(spch,fs,dwind,wind,dsr)
    %fs: sampling rate in samples per second (Hz)
    %dwind: duration of window in seconds
    %dsr: duration of sampling in seconds
    %dwind: shape of window
    
    %Perform slicing and convert to matrix where each col is a window
    nSamples = length(spch);
    nSr = dsr * fs;%Number of samples between the middle of each two successive windows.
    nWindSamples = dwind * fs;
    nOverlap = nWindSamples - nSr;
    ncol = floor((nSamples-nOverlap)/nSr);
    m = [];
    for i = 0:ncol-1
        indx = (i*nSr)+1;
        col = spch(indx : indx + nWindSamples - 1);
        m = [m col];
    end
    
    %Perform windowing
    if(isempty(wind))
        wind = hamming(nWindSamples);
    end
    wm = m .* wind;
    
    %Compute FFT
    
end
