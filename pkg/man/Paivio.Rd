\name{Paivio}
\alias{Paivio}
\docType{data}
\title{
Paivio, Yuille & Madigan Word Pool
}
\description{
The Paivio, Yuille & Madigan word pool contains 925 nouns,
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
}
\examples{
data(Paivio)
summary(Paivio)
plot(Paivio[,c(3:5,9)])

# density plots
plot(density(Paivio$imagery))
plot(density(Paivio$concreteness))
plot(density(Paivio$meaningfulness))
plot(density(Paivio$frequency))
rug(jitter(Paivio$frequency))

}
\keyword{datasets}
