
## memoized inverse closure

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  get <- function() x
  get_inv <- function() { 
    if (is.null(inv))
      inv <<- solve(x)
    return(inv)
  }
  
  list(get=get, inv=get_inv)
}


## returns the cached value

cacheSolve <- function(x, ...) {
   x$inv()
}
