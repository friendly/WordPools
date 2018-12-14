
#' Select observations within a given range
#'
#' This function masks `base::within` and so is no longer exported. Eventually it will be removed.
#' 
#' @param x A vector 
#' @param a Lower limit
#' @param b Upper limit
#'
#' @return A logical vector of the same length as \code{x} 
#'
#' @examples
#' WordPools:::within(1:10, 2, 5)
#' 
within <- function(x, a, b) {
  (!is.na(x)) & (x >= a) & (x <= b)
}

