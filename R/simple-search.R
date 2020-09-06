simple_search <- function(vector, target) {
  # Args:
    # vector: vector to search
    # target: quantity to match
  # output: index of location of match, or -1 if not found
  
  out <- -1
  for(i in 1:length(vector)) {
    if(vector[i] == target) out <- i
  }
  
  out
}