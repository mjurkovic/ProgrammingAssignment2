<<<<<<< HEAD
##Programming Assignment 2 
## we were to create two functions that can cache the inverse of a matrix



## makeCacheMatrix function creates a list with a function to set and get the value of a matrix x
## and also set and get the inverse of the matrix x


makeCacheMatrix <- function(x = matrix()) {
  
  inv<-NULL
  set<-function(y){
    x<<- y
    inv<<-NULL
  }
  get<-function() x
  setinverse<-function(inverse) inv <<-inverse
  getinverse<-function() inv
  list(set=set, 
       get=get, 
       setinverse=setinverse, 
       getinverse=getinverse
       )
  
}

## cacheSolve function returns the inverse of a matrix x. The idea of a cache is that if 
## the solution has already been computed, it will retrieve that saved calculation instead of  
## recalculating. If the solution has not been computed then it will compute the inverse of 
##matrix x

cacheSolve<-function(x, ...){
  inv <- x$getinverse()
  if(!is.null(inv)){
    message("getting cached data.")
    return(inv)
  }
  data<- x$get()
  inv<- solve(data)
  x$setinverse(inv)
  inv
   
}
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
