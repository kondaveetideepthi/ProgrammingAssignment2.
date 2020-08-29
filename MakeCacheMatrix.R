@@ -1,15 +1,40 @@
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creates a special matrix and has functions that
## set the value of the matrix, get the value of the
## matrix, set the value of its inverse, and get the
## value of its inverse


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) m <<- solve
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function
## Calculates the inverse of the matrix in the above
## function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
}
