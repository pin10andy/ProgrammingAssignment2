## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        set <- function(y){
                m = NULL
                x <<- y
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        if(!is.null(getsolve)){
                message("getting chached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data)
        x$setsolve(s)
        s
}        

## Return a matrix that is the inverse of 'x'