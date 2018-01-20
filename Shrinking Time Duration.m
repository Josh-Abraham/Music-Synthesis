y=half(signal3);
%filename = 'handel.wav';
wavwrite(y,44100,8,'HalvedSound.wav');
figure
plot(y, 'black');
title('Graph of Halved Signal');
xlabel('Time');
ylabel('Amplitude');
