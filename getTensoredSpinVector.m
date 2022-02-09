function tensoredSpinVector = getTensoredSpinVector(spins, stateNumber)


[S_ix, S_iy, S_iz] = tensoredSpinMatrices(spins, stateNumber);


tensoredSpinVector(:,:,1) = S_ix;
tensoredSpinVector(:,:,2) = S_iy;
tensoredSpinVector(:,:,3) = S_iz;



end

