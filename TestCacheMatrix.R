

tm <- matrix(c(1,1,1,0), 2,2)
tmcm <- makeCacheMatrix()
tmcm$set(tm)
cacheSolve(tmcm)
cacheSolve(tmcm)
