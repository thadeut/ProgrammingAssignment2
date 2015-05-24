## Those are pretty simple functions based on the examples given in the assingment.

## This first function creates the list of functions to set and get the matrices and
## to get and set the inversed matrices through the solve() function.

makeCacheMatrix <- function(x = matrix()) {

    i <- NULL
    set <- function(y) {
      x <<- y
      i <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) i <<- solve
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  
    
}


## This second function will actually perform the inversion and cache the result, but
## firstly it will check the cache.
## Attention: as stated in the assingment, these functions assume that all supplied 
## matrices are square and invertible. They will not work otherwise.

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if(!is.null(i)) {
      message("getting cached data")
      return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
  
        ## Return a matrix that is the inverse of 'x'
}

