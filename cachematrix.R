## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Creates the Cache Matrix that stores the cached value of inverse of a matrix
makeCacheMatrix <- function(x = matrix()) {
    cache <-  NULL
    set <- function(y){
        cache <<- NULL
        x <<- y
    }
    
    get <- function() x
    setInverse <- function(inverse) cache <<- inverse
    getInverse <- function() cache
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m <- x$getInverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setInverse(m)
    m
}
