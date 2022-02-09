function S_z = S_z_Matrix(S)


    checkValidSpin(S)
    
        dimensions = 2*S + 1;

        currentM = S;

        S_z = zeros(dimensions);

        for i = 1:dimensions

            S_z(i, i) = currentM;

            currentM = currentM - 1;


        end

end