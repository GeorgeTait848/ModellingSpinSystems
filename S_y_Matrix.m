function S_y = S_y_Matrix(S)

      checkValidSpin(S)


      S_p = S_p_Matrix(S);

      S_m = S_m_Matrix(S);
      
      S_y = complex(0, -0.5)*(S_p - S_m);
        


end