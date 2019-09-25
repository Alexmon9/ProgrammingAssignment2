## R Programming Assignment 2: Lexical Scoping
## This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y){
x <<-y
inv<<-NULL
}
get<-function()x
setInverse <-function(solveMatrix)inv<<-inverse
getInverse <-function()inv
list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}

##This function computes the inverse of the special "Matrix" returned by MakeCacheMatrix
##If the matrix has not changed and the inverse was previously calculated, the following function should be able to retrieve the inverse of the cache.
cacheSolve <- function(x, ...) {
inv<-x$getInverse()
if(!is.null(inv)){
message("getting cached data")
return(inv)
}
data<- X$get()
inv<-solve(data)
x$setInverse(inv)
inv  
}   
