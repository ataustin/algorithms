swap <- function(vector, index1, index2) {
  # swap elements of a vector at the given indices
  
  vector[c(index1, index2)] <- vector[c(index2, index1)]
  vector
}