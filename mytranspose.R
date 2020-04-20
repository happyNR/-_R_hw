mytranspose <- function(x) {
  if(is.vector(x) == TRUE){
    x = as.matrix(x)
    y <- matrix(1, nrow=ncol(x), ncol = nrow(x))
    for(i in 1:nrow(x)) {
      for(j in 1:ncol(x)) {
        y[j,i] <- x[i,j]
      }
    }
    return(as.vector(y))
  }else if(is.data.frame(x) == TRUE){
    x = as.matrix(x)
    y <- matrix(1, nrow=ncol(x), ncol = nrow(x))
    for(i in 1:nrow(x)) {
      for(j in 1:ncol(x)) {
        y[j,i] <- x[i,j]
      }
    }
    return(as.data.frame(y))
  }else if(is.null(x) == TRUE){
    return("null")
  }
  else if(is.logical(x) == TRUE){
    return("logical")
  }else{
    y <- matrix(1, nrow=ncol(x), ncol = nrow(x))
    for(i in 1:nrow(x)) {
      for(j in 1:ncol(x)) {
        y[j,i] <- x[i,j]
      }
    }
    return(y)
  }
}
