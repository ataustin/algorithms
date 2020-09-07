bubble_sort <- function(vector) {
  sorted <- FALSE
  
  while(!sorted) {
    sorted <- TRUE
    
    for(i in 1:(length(vector) - 1)) {
      first  <- vector[i]
      second <- vector[i+ 1]
      
      if(first > second) {
        vector[i] <- second
        vector[i + 1] <- first
        sorted <- FALSE
      }
    }
  }
  
  vector
}