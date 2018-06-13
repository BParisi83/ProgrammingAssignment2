MakeCacheMatrix <- function(x = matrix()){
        inv <- NULL
#The set function is caching the matrix as has been passed through by the intial parameters
        
        set <- function(y){
                
                x <<- y
#Initializes the inv to be NULL
                inv <<- NULL
        }
#Names the get function as a function itself
        get <- function() x
        
        setinverse <- function(inverse) inv <<-inverse
        getinverse <- function() inv

#Creates a list of all of the known values.
        
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
        
}