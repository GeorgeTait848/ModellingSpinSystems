function degenerateStates = getDegenerateStates(Operator, eigenValue)

    [eig_states, eig_values] = eig(Operator);

    degenerateIndices = getDegenerateIndices(Operator, eigenValue);


    degenerateStates = zeros(length(Operator(:,1)), length(degenerateIndices));

    for i = 1:length(degenerateIndices)

        currentDegenIndex = degenerateIndices(i);

        degenerateStates(:,i) = eig_states(:,currentDegenIndex);

    end



end
