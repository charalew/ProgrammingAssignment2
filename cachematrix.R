## These functions together cache the inverse of a matrix

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = numeric[]()) 
{
    cachematrix <- NULL
    set <- function(y)
    {
        x <<- y
        cachematrix <<- NULL
    }
    
    get <- function() x
    setmatrix <- function(solve) cachematrix  <<- solve
    getmatrix <- function() cachematrix 
    list(set = set, get = get,
         setmatrix = setmatrix,
         getmatrix = getmatrix)

}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...)
{
    
    if(!is.null(x$getmatrix()))
    {
        message("getting cached data")
        inversematrix <- x$getmatrix()
    }
    else
    {
        data <- x$get()
        inversematrix <- solve(data)
        x$setmatrix(inversematrix)
    }
    
    inversematrix
}
