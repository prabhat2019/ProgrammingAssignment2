## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(Mymatrix = matrix()) {
  M_inv <- NULL
  set <- function(y) {
    Mymatrix <<- y
    M_inv <<- NULL
  }
  get <- function(){
    Mymatrix
  } 
  setInverse <- function(inverse){
    M_inv <<- inverse
  }
  getInverse <- function(){
    M_inv
  }
  list(set = set,get = get,setInverse = setInverse,getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  M_inv <- x$getInverse()
  if (!is.null(M_inv)) {
    message("getting cached data")
    return(M_inv)
  }
  mat <- x$get()
  M_inv <- solve(mat, ...)
  x$setInverse(M_inv)
  M_inv
}
