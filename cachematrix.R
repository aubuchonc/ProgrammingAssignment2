## I created my functions following the example provided by the course. The first function cache the inverse of a matrix.
## The second function returns the inverse of the matrix if the matrix has not changed and the inverse has already been calculated.

## creates a matrix and cache its inverse.

makeCacheMatrix <- function (x=matrix()){
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function()x
        setsolve <- function(solve) m <<- solve
        getsolve <- function()m
        list(set=set, get=get,
             setsolve = setsolve,
             getsolve = getsolve)
}



## Returns the inverse of a matrix if it already has been calculated, if the matrix has not changed it will show the message "getting cached" 
## and it will returned the inverse. If the matrix has changed it will get the new matrix, calculate the inverse and return it.

cacheSolve <- function (x,...){
        m <- x$getsolve()
        if(!is.null(m)){
                message("getting cached")
                return(m)
        }
        data <- x$get()
        m <- solve(data,...)
        x$setsolve(m)
        m
}
