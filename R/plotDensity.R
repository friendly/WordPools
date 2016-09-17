#' Enhanced density plot for WordPools
#' 
#' Plots the distribution of a variable with a density estimate and a rug plot
#'
#' @param data A data.frame 
#' @param var  Name of the variable to be plotted
#' @param adjust Adjustment factor for the bandwidth of the density estimate
#' @param lwd line width
#' @param fill Color to fill the area under the density estimate
#' @param xlab Label for the variable
#' @param main Title for plot
#' @param anno If \code{TRUE}
#' @param ... Other arguments passed to \code{\link[stats]{plot.density}}
#' @return Returns the result of \code{\link[stats]{density}}
#' @export
#' @examples 
#' plotDensity(Paivio, "imagery", anno=TRUE)
#' plotDensity(Paivio, "imagery", anno=TRUE, adjust=1.5)
#' plotDensity(Paivio, "syl")
#' 
#' plotDensity(TWP, "imagery", anno=TRUE)

plotDensity <- function(data, var, adjust=1,  
          lwd=2, fill=rgb(1,0,0,0.2), 
          xlab=NULL, main=NULL,
          anno=FALSE, ...) 
{
	d <- density(data[,var], na.rm=TRUE, adjust=adjust)

	if (is.null(main)) main < paste( deparse(substitute(data)), ": ", var, sep="")
	if (is.null(xlab)) xlab <- var

	plot(d, main=main, lwd=lwd, xlab=xlab, ...)
	if (!is.null(fill))
		polygon(d, col=fill)
	rug(jitter(data[,var]))
	if (anno) {
  	bw <- formatC(d$bw, digits=3)
  	N <- d$n
		usr <- par("usr")
		xmin <- usr[1]
		ymax <- usr[4]
		text(xmin, .9*ymax, 
					paste0("N = ", N, "\n", "bw = ", d$bw),
					pos = 4, col="gray50")
	}
	invisible(d)
}

if(FALSE) {
plotDensity(Paivio, "imagery", fill="pink")
plotDensity(Paivio, "imagery", fill="pink", adjust=2)
plotDensity(Paivio, "imagery", fill="pink", adjust=.75)

plotDensity(Paivio, "syl", fill="pink")

}
