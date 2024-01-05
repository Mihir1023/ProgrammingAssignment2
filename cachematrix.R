
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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       
}
