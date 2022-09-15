weighted.median <- function(x, w) {       # New function since none native in R
  w <- w[order(x)]
  x <- x[order(x)]
  
  prob <- cumsum(w)/sum(w)
  ps <- which(abs(prob - .5) == min(abs(prob - .5)))
  return(x[ps])
}
