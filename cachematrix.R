## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## my formula follows some steps in order to get 

makeCacheMatrix <- function(m = matrix()) {
## start by initializing the inverse property
	i <- NULL
##setting up the matrix
	set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }
##	getting the matrix
	 get <- function() {
			m
    }
##	setting up the inverse matrix and a way to get it
	setInverse <- function(inverse) {
        i <<- inverse
    }	
	getInverse <- function() {
        i
    }
## 	
	list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}
	
## Write a short comment describing this function


cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
}
    m <- x$getInverse()

    ## return the inverse in case its already set
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }
    ## Get the matrix from object
    data <- x$get()

    ## get the inverse using matrix multiplication
    m <- solve(data) %*% data

    ## Setting up the inverse of the object
    x$setInverse(m)

    ## finally it returns the matrix
    m
}