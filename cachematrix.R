## Function as described in the assignment


## Function to create a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
         set <- function(matrix)
          x <<- matrix
         inv <<- NULL
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Function to compute the inverse of a matrix, caching the result if possible

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if (!is.null(inv)) {
                message("getting cached data")
        return(inv)
}
        data <- x$get()
        x$setinverse(inv)
        inv
        }


