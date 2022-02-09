function boolean = checkMatricesequivalence(A,B)


logicMatrix = A == B;

boolean = 1;


for row = 1:length(logicMatrix(:,1))

    for column = 1:length(logicMatrix(1,:))

        if A(row, column) == B(row, column)

        else 

            boolean = 0;

            return 

        end

    end 

end 


