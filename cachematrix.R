## Two functions to compute and cache the inverse matrix.
##
## makeCacheMatrix()
## This fuction creates a 'matrix' object that cache the inverse of 
## the input matrix.
##
## Arg:
##    x - an input matrix, by default is blank  
##
## Return:
##    a list of functions (methods of the 'matrix' object):
##      set()
##      get()
##      setinverse()
##      getinverse()
##
## cacheSolve()
## This function computes the inverse of the 'matrix' object returned 
## by makeCacheMatrix() function. If the inverse has already been
## calculated (and the matrix has not changed), then it retrieves 
## the inverse from the cache.
##
## Arg:
##    x - an original matrix
##
## Return:
##    the inverse of the original matrix
##
## Serguei Mikhailov (@cadastreng), November 2014

#####################################################################
## Creates a 'matrix' object that cache the inverse of the input matrix

makeCacheMatrix <- function(x = matrix()) {
        
        mt <- NULL
        
        set <- function(y) {
                x <<- y
                mt <<- NULL
        }
        
        get <- function() x
        
        setinverse <- function(mtinverse) mt <<- mtinverse
        
        getinverse <- function() mt
        
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
