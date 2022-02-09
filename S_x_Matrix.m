function S_x = S_x_Matrix(S)

    checkValidSpin(S)
    
    
     

      S_p = S_p_Matrix(S);
      S_m = S_m_Matrix(S);

 
      S_x = 0.5*(S_p + S_m);
        


end