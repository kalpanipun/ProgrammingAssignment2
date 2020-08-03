
## make a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
   inv <- NULL
   
   set <- function(matrix){
        x <<- y
        inv <<- NULL
   }
   get <- function()x
   
   setinverse <- function(solve) inv <<- solve
   getinverse <- function() inv
   list(set = set,get = get,setinverse = setinverse,getinverse=getinverse)
}


## computes the inverse of the matrix

cacheSolve <- function(x,...) {
        ## Return a matrix that is the inverse of 'x'
  
  if(!is.null(inv)){
  inv <- x$getinverse() 
    message("getting cached data")
    return(inv)
  }
  
  data <- x$get()
  inv <- solve(data,...)
  x$setinverse(inv)
  inv
  
}
