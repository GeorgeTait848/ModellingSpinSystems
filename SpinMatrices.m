
function [S_z, S_x, S_y, S_p, S_m, S_sq] = SpinMatrices(S)

    checkValidSpin(S)
    
        dimensions = 2*S + 1;

        currentM = S;

        S_z = zeros(dimensions);
        S_p = zeros(dimensions);
        S_m = zeros(dimensions);
       
        %S_z matrix

        for i = 1:dimensions

            S_z(i, i) = currentM;

            currentM = currentM - 1;


        end
        
        %S_m matrix
        
        currentM = S;
        
        for i = 1:(dimensions-1)
           
           S_m(i+1, i) = sqrt(S*(S+1) - currentM*(currentM-1));
           
           currentM = currentM - 1;
            
        end
        
        %S_p matrix
        
        for i = 1:(dimensions-1)
            
            S_p(i, i+1) = sqrt(S*(S+1) - currentM*(currentM+1));
            
            currentM = currentM + 1;
            
        end
        
        S_x = 0.5*(S_p + S_m);
        
        S_y = complex(0, -0.5)*(S_p - S_m);
        
        S_sq = S_z*S_z + S_x*S_x + S_y*S_y;
        
        

end