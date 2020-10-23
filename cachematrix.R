
# Purpose: To calculate the inverse of matrix using cache
# Creation date: 23 Oct 2020
# Author: Mohammed Javed Siddiqui

# This list contains following functions:
# 1) Setting the value of matrix (for calling function)
# 2) Getting the value of matrix (from calling function)
# 3) Setting the value of inverse (the inverted matrix)
# 4) Getting the value of inverse (the inverted matrix)

makeCachematrix <- function(x = matrix()){
  inverse <- NULL
  set <- function(y){
    x <<- y
    inverse <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inverse <<- inverse}
  getInverse <- function() {inverse}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...){
  inverse <- x$getInverse()
  if(!is.null(inv)){
    message("Retrieving cached matrix")
    return(inverse)
  }
  reultMatrix <- x$get()
  inverse <- solve(reultMatrix, ...)
  x$setInverse(inverse)
  inverse
}
