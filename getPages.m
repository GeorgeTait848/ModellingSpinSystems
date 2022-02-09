function pages = getPages(matrix)

if length(size(matrix)) == 3

    sz = size(matrix);

    pages = sz(3);

else 

    error('Only 3-dimensional arrays can have a number of pages')

end