@@ -1,7 +1,7 @@
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates the matrix object that can cache its inverse 

cachematrix <- function(x = matrix()) {
  ma <- NULL
@@ -18,7 +18,7 @@ cachematrix <- function(x = matrix()) {



## Write a short comment describing this function
## This function computes the matrix inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ma <- x$getInverse()
  if(!is.null(ma)){
    message("getting cached data")
    return(ma)
  }
  mat <- x$get()
  ma <- solve(mat,...)
  x$setInverse(ma)
  ma
}
