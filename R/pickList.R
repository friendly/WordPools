#' Select Items from a Word Pool in Given Ranges
#'
#' This is a convenience function to provide the capability to 
#' select items from a given word pool, with restrictions on the
#' range of any numeric variables.
#'
#' @details \code{\link[base]{sample}} will generate an error if fewer than \code{nitems * nlists} items are 
#' within the specified \code{ranges} and \code{replace=FALSE}.
#'
#' @param data A data.frame, typically a word list like \code{\link{Paivio}} or \code{\link{TWP}} 
#' @param ranges A data.frame of two rows, and with column names corresponding to a subset of the column names 
#'        in \code{data}.  The two rows give the minimum and maximum values, respectively, of variables in \code{data}. 
#'        Alternatively, you can supply a named list containing the minimum and maximum 
#'        values for one or more variables in \code{data}.
#' @param nitems Number of items per list 
#' @param nlists Number of lists
#' @param replace A logical value, indicating whether the sampling of items (rows) of \code{data} is to allow 
#'        sampling with replacement.
#'
#' @return A data frame of the same shape as \code{data} containing the selected items prefixed by 
#'        the \code{list} number.
#'
#' @author Michael Friendly
#' @references A related word list generator: Friendly, M. Word list generator. \url{http://datavis.ca/online/paivio/}
#' @export
#' @importFrom stats na.omit
#' @importFrom methods is
#' @seealso \code{\link[base]{sample}}
#' @keywords datagen
#' @examples
#' data(Paivio)
#' # 2 lists, no selection on any variables
#' pickList(Paivio, nlists=2)
#' 
#' # Define ranges for low and high on imagery, concreteness, meaningfulness
#' # These go from low - median, and median-high on each variable
#' vars <- 3:5
#' (low <- as.data.frame(apply(Paivio[,vars], 2, fivenum))[c(1,3),])
#' (high <- as.data.frame(apply(Paivio[,vars], 2, fivenum))[c(3,5),])
#' 
#' # select two lists of 10 low/high imagery items
#' lowI <- pickList(Paivio, low[,"imagery", drop=FALSE], nitems=10, nl=2)
#' highI <- pickList(Paivio, high[,"imagery", drop=FALSE], nitems=10, nl=2)
#' 
#' # compare means
#' colMeans(lowI[,c(4:8)])
#' colMeans(highI[,c(4:8)])
#' 
#' # using a list of ranges
#' L <- list(imagery=c(1,5), concreteness=c(1,4))
#' pickList(Paivio, L)


pickList <- function(data, ranges, nitems=10, nlists=1, replace=FALSE) {
	
	within <- function(x, a, b)
		(!is.na(x)) & (x >= a) & (x <= b)
	
	if (missing(ranges)) {
		vars <- sapply(data, is.numeric)
		ranges <- as.data.frame(apply(data[,vars], 2, function(x) range(na.omit(x))))
	}
	# allow a list of min/max, rather than a data.frame
	if (is(ranges, 'list')) ranges <- as.data.frame(ranges)

	names <- colnames(ranges)
	OK <- rep(TRUE, nrow(data))
	for (col in names) {
		OK <- OK & within(data[,col], ranges[1,col], ranges[2,col])
	}
	data <- data[OK,]
	want <- sample(1:nrow(data), size=nitems*nlists, replace=replace)
	data <- data[want,]
	data <- cbind(list=(rep(1:nlists, each=nitems)), data)
	data
}
