## This file contains two functions:
##   makeCacheMatrix - a set of functions to work with matrixes
##   cacheSolve - function gets pre-calculated inversed matrix from cache or inverses the matrix and stores it value into cache


## Function makeCacheMatrix creates a "matrix manager": an object which 
## contains a set of fuctions to inverse matrixes 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set<-function(y){
    x <<- y
    inv <<- NULL
  }
  
  get<-function(){
    x
  }
  
  setinverse<-function(inverse){
    inv<<-inverse
  }
  
  getinverse<-function(){
    inv
  }
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Function returns the inverse value of squared matrix
## If the matrix is already inverted, cacheSolve returns the value from cache.
## Otherwise function cacheSolve inverses the matrix, stores the value into cache and returns it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i<-x$getinverse()
  if(!is.null(i)){
    message("Inversed matrix is found in cache. ")
    return(i)
  }
  
  data<-x$get()
  i<-solve(data, ...)
  
  x$setinverse(i)
  i
}

