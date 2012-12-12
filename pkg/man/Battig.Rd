\name{Battig}
\alias{Battig}
\docType{data}
\title{
Battig - Montague Categorized Word Norms
}
\description{
This dataset comprises a ranked list of
5231 words listed in 56 taxonomic categories
by people who were asked to list as many exemplars of a given
category ("a precious stone", "a unit of time", "a fruit", "a color", etc.).
Participants had 30s to generate as many responses to each category as possible, 
after which time the next category name was presented.

Included in this dataset are all words from the Battig and Montague (1969)
norms listed with \code{freq > 1}.


}
\usage{data(Battig)}
\format{
  A data frame with 5231 observations on the following 9 variables.
  \describe{
    \item{\code{word}}{a character vector}
    \item{\code{catnum}}{category number, a factor}
    \item{\code{catname}}{category name, a factor}
    \item{\code{syl}}{number of syllables}
    \item{\code{letters}}{number of letters}
    \item{\code{freq}}{Frequency of response}
    \item{\code{frequency}}{Kucera-Francis word frequency}
    \item{\code{rank}}{rank of \code{freq} within the category}
    \item{\code{rfreq}}{rated frequency}
  }
}
\details{
In our original dataset, words were truncated at 18 characters, so some 
are incomplete.
}
\source{
W.F Battig & W.E Montague (1968).
    Category norms for verbal items in 56 categories: A replication and extension of the Connecticut norms using 
    University of Maryland and Illinois students (Tech. Rep.)
    University of Colorado, Boulder, CO (1968)

W.F Battig & W.E Montague (1969).
    Category norms for verbal items in 56 categories: A replication and extension of the Connecticut norms.
    \emph{Journal of Experimental Psychology}, 80 (1969), pp. 1-46
}

\references{
Joelson, J. M. & Hermann, D. J., Properties of categories in semantic
|       memory, \emph{Amer Journal of Psychology}, 1978, 91, 101-114.
}
\examples{
data(Battig)
## maybe str(Battig) ; plot(Battig) ...

# select items from several categories
cats <- c("fish", "bird", "flower", "tree")
for (c in cats) {
	cat("\nCategory:", c, "\n")	
	print(pickList(subset(Battig, catname==c), nitems=5))
}

}
\keyword{datasets}
