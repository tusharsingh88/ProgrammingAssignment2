## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
t <- NULL
        set <- function(y) {
                x <<- y
                t <<- NULL
        }
        get <- function() x
        setmean <- function(mean) t <<- mean
        getmean <- function() t
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
t <- x$getmean()
        if(!is.null(t)) {
                message("Fetching data from catche")
                return(t)
        }
        data <- x$get()
        t <- mean(data, ...)
        x$setmean(t)
        t
}
