## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix=function(x=matrix()){
  m=NULL
  #set the value of the matrix
  set=function(y){
    x<<-y
    m<<-NULL
  }
  #get the value of the matrix
  get=function()x
  #set the function with the R function of calculating inverse matrix
  setsolve=function(solve) m<<-solve
  #get the inversed matrix
  getsolve=function() m
  list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  #assign the inversed matrix to m
  m <- x$getsolve()
  #error message if the matrix hasn't gotten any inversed matrix
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  #set the matrix to data
  data <- x$get()
  #calculate inversed matrix
  m <- solve(data, ...)
  x$setsolve(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
