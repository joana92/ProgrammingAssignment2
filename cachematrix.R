## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix is to return a list of functions as required
#  cacheSolve is to return the inversing value 

## Write a short comment describing this function

makeCacheMatrix <- function(x = numeric()) {
        cache <- NULL;
        # store a matrix
        setMatrix <- function(newValue) {
                x <<- newValue
                cache <<- NULL
        }
        # returns the stored matrix
        getMatrix <- function() {
                x
        }
        # cache  
        cacheInverse <- function(solve) {
                cache <<- solve
        }
        getInverse <- function() {
                cache
        }
        # return the list of value
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(y, ...) {
        inverse <- y$getInverse()
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        data <- y$getMatrix()
        inverse <- solve(data)
        y$cacheInverse(inverse)
        
 ## Return a matrix that is the inverse of 'y'
        inverse
       
}
