outlier <- function(x, threshold = .10) {
  upper <- quantile(x, 1 - threshold)
  lower <- quantile(x, threshold)
  x[x > upper] <- upper
  x[x < lower] <- lower
  return(mean(x))
}

digit_return <- function(x=789,k=1,opp=FALSE) {
  # convert x to a character and then use strsplit to break up
  # numbers into a vector
  
  if (!is.numeric(k) | (k <= 0)) {
    stop("k is either < 0 or is a character strings")
  }
  
  mystring <- unlist(strsplit(as.character(x),""))
  
  # Check to see if we need to reverse the string.
  if (!opp) {
    mystring <- rev(mystring)
  }
  
  # Check to see if k matches an element that is either longer than
  # the length of x OR the kth element of x is a "-" character. If so
  # then return a 0
  
  if ((mystring[k] == "-") || (k > length(mystring))) {
    retstring <- 0
  } else {
    retstring <- mystring[k]
  }
  
  return(as.numeric(retstring))
}
