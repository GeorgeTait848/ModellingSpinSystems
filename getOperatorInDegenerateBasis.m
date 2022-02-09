function newOperator = getOperatorInDegenerateBasis(Operator, degenerateStates)

    newOperator = zeros(length(degenerateStates(1,:)));

    for rowNum = 1:length(newOperator(:,1))


        for columnNum = 1:length(newOperator(:,1))


            newOperator(rowNum, columnNum) = degenerateStates(:,rowNum)' * Operator * degenerateStates(:,columnNum);

        end

    end

end