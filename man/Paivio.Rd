\name{Paivio}
\alias{Paivio}
\docType{data}
\title{
Paivio, Yuille & Madigan Word Pool
}
\description{
The Paivio, Yuille & Madigan (1968) word pool contains 925 nouns,
together with average ratings of these words on imagery,
concreteness and meaningfulness, along with other 
variables.
}
\usage{data(Paivio)}
\format{
  A data frame with 925 observations on the following 9 variables.
  \describe{
    \item{\code{itmno}}{item number}
    \item{\code{word}}{the word}
    \item{\code{imagery}}{imagery rating}
    \item{\code{concreteness}}{concreteness rating}
    \item{\code{meaningfulness}}{meaningfulness rating}
    \item{\code{frequency}}{word frequency, from the Kucera-Francis norms}
    \item{\code{syl}}{number of syllables}
    \item{\code{letters}}{number of letters}
    \item{\code{freerecall}}{Free recall proportion, added from Christian et al (1978)}
  }
}
\details{
The \code{freerecall} variable has 27 NAs.
}
\source{
Paivio, A., Yuille, J.C. & Madigan S. Concreteness, imagery and
meaningfulness for 925 nouns.  \emph{Journal of Experimental Psychology,
Monograph Supplement}, 1968, 76, No.1, pt.2.

Christian, J., Bickley, W., Tarka, M., & Clayton, K. (1978). Measures of free
recall of 900 English nouns: Correlations with imagery, concreteness,
meaningfulness, and frequency. \emph{Memory & Cognition}, 6, 379-390.
}

\references{
Kucera and Francis, W.N. (1967). 
\emph{Computational Analysis of Present-Day American English}. Providence: Brown University Press.

Rubin, D. C. & Friendly, M. (1986).
Predicting which words get recalled: Measures of free recall, availability, goodness, emotionality, and pronunciability for 925 nouns.
\emph{Memory and Cognition}, 14, 79-94.
}
\examples{
data(Paivio)
summary(Paivio)
plot(Paivio[,c(3:5,9)])

# density plots

plotDensity(Paivio, "imagery")
plotDensity(Paivio, "concreteness")
plotDensity(Paivio, "meaningfulness")
plotDensity(Paivio, "frequency")
plotDensity(Paivio, "syl")
plotDensity(Paivio, "letters")
plotDensity(Paivio, "freerecall")



# find ranges & 5 num summaries
ranges <- as.data.frame(apply(Paivio[,-(1:2)], 2, function(x) range(na.omit(x))))
rownames(ranges) <- c("min", "max")
ranges

P5num <- as.data.frame(apply(Paivio[,3:5], 2, fivenum))
rownames(P5num) <- c("min", "Q1", "med", "Q3", "max")
P5num




}
\keyword{datasets}
