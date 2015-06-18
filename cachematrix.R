## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##This function creates a list of the functions of set, get, setINV and get Inv
##uses the <<- operator so that the value of an object in an enviornment
##is different from the current envrionment

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL 
  set <- function(y) {
    x <<- y
    xinv <<- NULL     
  }
 get <- function()x
 setInv <- function(inv) xinv <<- inv
 getInv <- function() xinv
 list(set = set, get = get,
            setInv = setInv,
            getInv = getInv)
 }


## Write a short comment describing this function

## this function calculates the inverse of the list created with the 
## above function. it uses the solve function to compute inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInv()
  if(!is.null(m)) {
    message("getting cached data")
    return (m)
    }
  data <- x$get
  m <- solve(data)
  x$setmatrix(m)
  m
}
