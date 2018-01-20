function P_3_9(notes,samp_freq,minfreq, maxfreq)
% P_3_9(notes,samp_freq, minfreq, maxfreq)
%
% Calculates and displays a time/frequency plot
% of the information in the signal notes.  samp_freq
% is used to determine the frequency axis and the
% time scale.
%
% minfreq and maxfreq are the minimum and maximum
% frequencies (in Hz) to display on the plot. As a
% default, the frequency range of 220 Hz to 440 Hz 
% is displayed.
%
% Time is broken into 50 msec chunks, and the frequency
% content of each chunk is determing using the fft.

% Make sure notes is a column vector
notes = notes(:);

% Find length of signal
l = length(notes);

% Find # of samples in 50 msec
lx = ceil(0.050 * samp_freq);

% Find next largest power of 2
lt = ceil(log2(lx))+1;
lt = 2^lt;

% Construct frequency axis
w = (0:lt-1)/lt*samp_freq;

% Find min and max indices into frequency domain
if(nargin ~= 4)
	wmin = min(find(w >= 220));
	wmax = min(find(w >= 440));
else
	wmin = min(find(w >= minfreq));
	wmax = min(find(w >= maxfreq));
end

% How many 50 msec chunks are in signal?
chunks = floor(l/lx);

fprintf('Calculating frequency spectra using %d sections...\n',chunks);

% Allocate space
X = zeros(chunks+1,lt);

% Loop over signal, calculate fft
for k = 1:chunks,
	input = notes(lx*(k-1)+1:lx*k);
	X(k,:) = abs(fft(input,lt))';
end

% Do the last bit (odd size, the fractional part)
Z = abs(fft(notes(lx*k:l),lt))';
Z = Z(:);
X(chunks+1,:) = Z';

% Construct time signal
t = (0:lx:chunks*lx)/samp_freq;

% Plot in 3-D
surf(t,w(wmin:wmax),X(:,wmin:wmax)');

% Transform to 2-D view
view(2);
% Set colors
colormap(hot)

% Labels...
ylabel('Frequency in Hz');
xlabel('Time in seconds');
title('Time/Frequency Representation');
