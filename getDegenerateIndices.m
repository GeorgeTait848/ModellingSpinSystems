function degenerateIndices = getDegenerateIndices(Operator, eigenValue)
    
    degenerateIndices = [];
    
    eig_values = eig(Operator);
    
    for i = 1:length(Operator(:,1))
    
        if abs(eig_values(i) - eigenValue) < 1e-14

            % this is used instead of if eig_values(i) == eigenValue
            % to account for the computational error matlab has, which is 
            % on the order of 10^-15

        
            degenerateIndices(end+1, 1) = i;
    
        end
    
    end
 
    if isempty(degenerateIndices)

        error('No eigenstates of this operator have this eigenvalue')

        
    elseif length(degenerateIndices) == 1

        error('this eigenvalue is non-degenerate for this operator')

    end

end