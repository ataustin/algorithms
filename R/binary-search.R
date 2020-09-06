binary_search <- function(vector, target, search_index = 1:length(vector)) {
  # Args:
    # vector: vector to search
    # target: quantity to match
  # output: index of location of match, or -1 if not found

  min_index <- min(search_index)
  max_index <- max(search_index)
  if(min_index == 1 && max_index == length(vector)) vector <- sort(vector)
  
  split_index <- ceiling((max_index + min_index) / 2)
  if(vector[split_index] == target) return(split_index)
  split_element <- vector[split_index]
  
  if(target < split_element) {
    max_index <- split_index - 1
  } else {
    min_index <- split_index + 1
  }

  out <- tryCatch(binary_search(vector, target, min_index:max_index),
                  error = function(e) return(-1))
  out
}