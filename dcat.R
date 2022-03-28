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

nagen <- function(df=data1,nn=5,cols="all") {
  
  # if cols == "all" then use all of df
  # else we pull out only the columns of interest into its own data frame
  if (!identical(cols,"all")) {
    savedf <- df
    df <- df[,cols,drop=FALSE]
  }
  
  # Check to see if the requested number of NAs is less than or equal
  # to the product of the number of rows and columns in the data frame
  # if not then stop and print an error message
  
  if (nn > prod(dim(df))) {
    str <- paste(nn,"NAs requested though only",prod(dim(df)),"slots exist",collapse="")
    stop(str)
  }
  
  # Create a loop from 1 to the number of desired NAs
  for (ii in 1:nn) {
    
    # If it's the first time through then sample a random row and a random col
    # location.
    
    # Then set that location in the data frame to NA. Move to the NEXT iteration of
    # the loop
    
    if (ii == 1) {
      myrows <- sample(1:nrow(df),1)
      mycols <- sample(1:ncol(df),1)
      df[myrows,mycols] <- NA
      next
      
      # If it's the second, third, or nn time through the loop  then
      # sample a new random row and column.
      
    } else {
      myrows <- sample(1:nrow(df),1)
      mycols <- sample(1:ncol(df),1)
      
      # While the location corresponding to the sampled location contains an NA
      # then keep sampling a new row and column location
      
      while (is.na(df[myrows,mycols])) {
        myrows <- sample(1:nrow(df),1)
        mycols <- sample(1:ncol(df),1)
      }
      
      # Set the location to NA
      df[myrows,mycols] <- NA
    }    
  }
  # Return the version of the data frame with the desired number of NAs
  if (!identical(cols,"all")) {
    savedf[,cols] <- df[,cols]
    retdf <- savedf
  } else {
    retdf <- df
  }
  return(retdf)
}