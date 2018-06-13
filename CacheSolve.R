
CacheSolve <- function(x, ...) {
        
#sets the m to the x matrix being passed through the function while x is being augmented with getinverse
        
        m <- x$getinverse()
#Checks to see that m is not NULL
        if(!is.null(m)) {
#Gives an output that the data is being fetched and returns the new matrix
                message("getting cached data.")
                return(m)
        }
#Pulls the matrix x through the get function      
        data <- x$get()
#Creates the inverse and sets it to m
        inv <- solve(data)
#sets m as the inverse to x
        x$setinverse(inv)
#returns the invesere of the cached matrix
        inv
}