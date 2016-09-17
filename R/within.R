
#' Select observations within a given range
#'
#' @param x A vector 
#' @param a Lower limit
#' @param b Upper limit
#'
#' @return A logical vector of the same length as \code{x} 
#' @export
#'
#' @examples
#' within(1:10, 2, 5)
#' 
within <- function(x, a, b) {
  (!is.na(x)) & (x >= a) & (x <= b)
}

