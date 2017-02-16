## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
t <- NULL  ## initialize inv as NULL; will hold value of matrix inverse 
        set <- function(y) {  ## define the set function to assign new
                x <<- y  ## value of matrix in parent environment
                t <<- NULL
        }
        get <- function() x   ## define the get fucntion - returns value of the matrix argument
        setmean <- function(mean) t <<- mean  ## assigns value of t in parent environment
        getmean <- function() t
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)

}


## Write a short comment describing this function

## This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already
## been calculated (and the matrix has not changed), then the
## cachesolve will retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
t <- x$getInverse()
        if(!is.null(t)) {
                message("Fetching data from catche")
                return(t)
        }
        data <- x$get()
        t <- solve(data, ...)
        x$setInverse(t)
        t
}
