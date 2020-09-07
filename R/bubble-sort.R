bubble_sort <- function(vector) {
  sorted <- FALSE
  
  while(!sorted) {
    sorted <- TRUE
    
    for(i in 1:(length(vector) - 1)) {
      if(vector[i] > vector[i + 1]) {
        vector <- swap(vector, i, i + 1)
        sorted <- FALSE
      }
    }
  }
  
  vector
}