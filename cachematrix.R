## Put comments here that give an overall description of what your
## functions do

## Function makeCacheMatrix creates a "matrix cache manager": an object which 
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
## 

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

