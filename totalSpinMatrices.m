function [S_x, S_y, S_z, S_sq] = totalSpinMatrices(spins)

    totalDimensions = getTotalDimensions(spins);

    S_x = zeros(totalDimensions);

    S_y = zeros(totalDimensions);

    S_z = zeros(totalDimensions);


    for i = 1:length(spins)


        [S_i_x, S_i_y, S_i_z] = tensoredSpinMatrices(spins, i);

        S_x = S_x + S_i_x;

        S_y =  S_y + S_i_y;

        S_z = S_z + S_i_z;

    end


    S_sq = S_x*S_x + S_y*S_y + S_z*S_z;

end