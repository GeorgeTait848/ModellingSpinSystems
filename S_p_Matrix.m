function S_p = S_p_Matrix(S)


    checkValidSpin(S)

    dimensions = 2*S + 1;

    S_p = zeros(dimensions);

    currentM = -1*S;



    for i = 1:(dimensions-1)
            
            S_p(i, i+1) = sqrt(S*(S+1) - currentM*(currentM+1));
            
            currentM = currentM + 1;
            
    end
        

end