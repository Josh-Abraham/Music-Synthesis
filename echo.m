function out = echo(x, T, a,t)
    		delay = zeros(1,T);  %Create the zero matrice for the delay before the echo
            
            
            signalEcho = x.*(a.*t);           %Changes the echo magnitude
            %signalEcho
            
  		total = horzcat( delay, signalEcho);  %concat all the signals
 		out = total;               %Output as transpose, so it is a row vector
end

