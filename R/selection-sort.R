selection_sort <- function(vector) {
  sorted_vector <- vector(mode = class(vector), length = length(vector))
  
  for(i in 1:length(sorted_vector)) {
    min_value <- vector[1]
    min_index <- 1
    
    for(j in 1:length(vector)) {
      if(vector[j] < min_value) {
        min_value <- vector[j]
        min_index <- j
      }
    }
    sorted_vector[i] <- min_value
    vector <- vector[-min_index]
  }
  
  sorted_vector
}