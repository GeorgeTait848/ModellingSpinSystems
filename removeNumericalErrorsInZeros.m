function newVariable = removeNumericalErrorsInZeros(variable)

    columns = length(variable(1,:));
    rows = length(variable(:,1));
    
    
    newVariable = variable;
    
    
    for row = 1:rows
    
        for column = 1:columns
    
    
            if abs(newVariable(row,column)) < 1e-14 
    
                newVariable(row, column) = 0;
    
    
            end
    
        end
    
    end

end