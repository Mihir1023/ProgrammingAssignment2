
## I have taken the makeCachefunction directly from the README file

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                x<<-y
                inv <<- NULL
        }
        get <- function() x
        setInv <- function(inverse) inv <<- inverse
        getInv <- function() inv
        list (set=set,
              get=get,
              setInv=setInv,
              getInv=getInv)
}


## I've tried to write a function by using the syntax of the cachemean provided in the README file

cacheSolve <- function(x, ...) {
        Inv <- x$getinverse()
        if(!is.null(Inv)) {
                message("getting cached data")
                return(Inv)
        }
        data <- x$get()
        Inv <- solve(data, ...)
        x$setinverse(Inv)
        Iv
}
