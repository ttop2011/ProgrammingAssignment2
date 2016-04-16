## Put comments here that give an overall description of what your
## functions do

## when using, creates a stored (cached) matrix to recall in future functions

makeCacheMatrix <- function(x = matrix()) {    
invert<- NULL
set<-function(y)
  x<<-y
invert<<-NULL
get<-function()x
settheinverse<-function(inverse) invert<<-NULL
gettheinverse<-function() invert
list(set=set,
     get=get,
     settheinverse=settheinverse,
     gettheinverse=gettheinverse)
}




## use this to check if a matrix is cached, and if so, use it instead of recomputing

cacheSolve <- function(x, ...) {
invert<-x$gettheinverse()
if(!is.null(invert)){
  message("getting cached data")
return(invert)
}
mat<-x$get()
invert<-solve(mat,...)
x$settheinverse(invert)
invert
}