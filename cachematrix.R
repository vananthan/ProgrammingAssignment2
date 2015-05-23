## makeCacheMatrix and cacheSolve are used to cache an inverse of a matrix 

## This function returns a list of four functions, set, get, setmatrix and getmatrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
  x <<- y
  m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  get matrix <<- function() m
  list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}


## This function checks if the inverse of the matrix has already been computed
## If so, it gets the already computed inverse using getmatrix
## If not, it solves for the inverse

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.nll(m)) {
    message("getting cache data")
    return(m)
    }
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setmatrix(m)
  m
}
