function eigenStates = createEigenStatesFromDegeneracy(A,B, B_eig_value)


    if checkMatricesEquivalence(get_commutator(A,B), zeros(size(A))) ~= 1

        error('The two operators given do not commute')

    end

    degenerateStates = getDegenerateStates(B, B_eig_value);
    
    A_degen = getOperatorInDegenerateBasis(A, degenerateStates);
    
    
    [A_degen_eig_states, A_degen_eig_values] = eig(A_degen);
    
    numberOfDegenerateStates = length(degenerateStates(1,:));

    dimensions = length(degenerateStates(:,1));
    
    eigenStates = zeros(dimensions, numberOfDegenerateStates);
    
    for columnNumber = 1:numberOfDegenerateStates
    
        for rowNumber = 1:numberOfDegenerateStates
    
            eigenStates(:,columnNumber) = eigenStates(:,columnNumber) + A_degen_eig_states(rowNumber,columnNumber)*degenerateStates(:,rowNumber);
    
        end
    end

    eigenStates = removeNumericalErrorsInZeros(eigenStates);

end



