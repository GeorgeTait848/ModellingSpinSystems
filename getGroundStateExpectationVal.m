function GS_expect = getGroundStateExpectationVal(spins, H, operator)


[eig_vecs, eig_vals] = eig(H);

groundState = eig_vecs(:,1);


GS_expect = getExpectationValue(operator, groundState);

end
