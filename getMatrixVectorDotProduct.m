function result = getMatrixVectorDotProduct(m1, m2)

    result = m1(:,:,1) * m2(:,:,1);


    assertpagesEqual(m1, m2)
    
    pages = getPages(m1);

    for i = 2:pages

        result = result + m1(:,:,i)*m2(:,:,i);



    end

end
    

