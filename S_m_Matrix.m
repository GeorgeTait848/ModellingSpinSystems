function S_m = S_m_Matrix(S)


    checkValidSpin(S)

    dimensions = 2*S + 1;

    S_m = zeros(dimensions);

    currentM = S;



        
    for i = 1:(dimensions-1)
           
           S_m(i+1, i) = sqrt(S*(S+1) - currentM*(currentM-1));
           
           currentM = currentM - 1;
             
    end
        

end