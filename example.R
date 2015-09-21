## example.R

source("cachematrix.R")

# Create matrix to be stored in cache
m1<-matrix(rnorm(9), nrow=3, ncol=3)


# create "cache manager": an object which keeps our cache-related functions
c1<-makeCacheMatrix()
c1$set( m1 )

# Enshure that original matrix is stored in "manager"
c1$get()

# the next row will return NULL
message("the next row will return NULL")
c1$getinverse()

# Trying to inverse matrix
cacheSolve(c1)

# Now the inversed matrix presents in cache
message("Now the inversed matrix presents in cache")
cacheSolve(c1)





