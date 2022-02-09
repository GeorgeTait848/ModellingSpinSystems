function [S_i_x, S_i_y, S_i_z] = tensoredSpinMatrices(spins, stateNumber)
    
    if stateNumber < 1 || stateNumber > length(spins)
    
        error('invalid state number, stateNumber must represent the enumeration of your dersired state. ')
    
    end
    
    dimensions_arr = 2*spins + 1;

    S_i_x = S_x_Matrix(spins(stateNumber));

    S_i_y = S_y_Matrix(spins(stateNumber));

    S_i_z = S_z_Matrix(spins(stateNumber));

    indexCounter = 1;

    identityKron = 1;

    while indexCounter < stateNumber

        identityKron = kron(identityKron, eye(dimensions_arr(indexCounter)));

        indexCounter = indexCounter + 1;

    end


    S_i_x = kron(identityKron, S_i_x);

    S_i_y = kron(identityKron, S_i_y);

    S_i_z = kron(identityKron, S_i_z);

    while indexCounter < length(spins)

        indexCounter = indexCounter +1;

        S_i_x = kron(S_i_x, eye(dimensions_arr(indexCounter)));

        S_i_y = kron(S_i_y, eye(dimensions_arr(indexCounter)));

        S_i_z = kron(S_i_z, eye(dimensions_arr(indexCounter)));

        

    end

end