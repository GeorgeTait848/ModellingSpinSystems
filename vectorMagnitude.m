function mag = vectorMagnitude(vector)


magsq = 0;


for i = 1:length(vector)


    magsq  = magsq + abs(vector(i))*abs(vector(i));

end

mag = sqrt(magsq);


end



