function comm = get_commutator(A, B)



comm =  A*B - B*A;

comm = removeNumericalErrorsInZeros(comm);


end