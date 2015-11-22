##These are a pair of fucntions that would be able to cache the inverse of a matrix.

##This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setmean<-function(mean) m<<-mean
  getmean<-function()m
  matrix(set=set,get=get,setmean=setmean,getmean=getmean)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
cacheSolve <- function(x, ...) {
  m<-x$getmean()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  x<-mean(data,...)
  m
}
