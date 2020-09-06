duplicate_search <- function(vector) {
  # Args:
    # vector: vector in which to search for duplicates
  # Returns:
    # Logical; whether a duplicate was found
  
  lnt <- length(vector)
  for(i in 1:(lnt - 1)) {
    for(j in (i + 1):lnt) {
      if(vector[i] == vector[j]) return(TRUE)
    }
  }
  
  FALSE
}