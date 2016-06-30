## This function is used to cache the inversion of a matrix.

## The below function is used to create a special matrix and cache the inverse of matrix which can be used later

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setinverse <- function(solve) m <<- solve
	getinverse <- function() m
	list (set=set, get = get, setinverse = setinverse, getinverse = getinverse)
		
}


## The below function is used to retrieve inverse from cache, if it is already cached otherwise calculate the inverse using the above defined function makecachematrix.

cacheSolve <- function(x, ...) {
	m <- x$getinverse()
	if(!is.null(m)) {
		message("Getting Cached Data")
		return(m)
	}
	data <- x$get()
	m <- solve(data,...)
	x$setinverse(m)
	m
        ## Return a matrix that is the inverse of 'x'
}
