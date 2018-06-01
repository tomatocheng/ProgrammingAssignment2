## An overall description of purpose for below functions:
## To create a special matrix object which can caches its inverse
## 1, to define m (the special matrix) calling cache value of "x" {m<- makeCacheMatrix(x)}
## 2, to create x as an ordinary matrix, and get its value from {m$get()}
## 3, Then call y as an ordinary matrix, and change the value of x as getting of y from {m$get(y)}
## 5. Get the inverse from m the caches {cacheSolve(m)}


## define makeCacheMatrix, and m

makeCacheMatrix <- function(x = matrix()){
    m <- NULL 
    set <- function (y) {
      x <<- y  
      m <<- NULL 
    }
    get <- function () x
    setInverse <- function (inverse) m <<- inverse
    getInverse <- function () m
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## Below function will get the inverse value from the special matrix m. 
cacheSolve <- function (x) {
  m <- x$getInverse()
     if(!is.null(m)) {
        message("getting cached data")
    return(m)
      }
  data <- x$get()sh
  m <- solve(date)
  x$setInverse(m)
  m
}



