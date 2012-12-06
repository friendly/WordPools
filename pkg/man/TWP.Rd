\name{TWP}
\alias{TWP}
\docType{data}
\title{
The Toronto Word Pool
}
\description{
The Toronto Word Pool consists of 1080 words in various grammatical classes
together with a variety of normative variables.

The \code{TWP} contains high frequency nouns, adjectives, and verbs taken 
originally from the Thorndike-Lorge (1944) norms. 
This word pool has been used in hundreds of studies at Toronto and elsewhere. 
}
\usage{data(TWP)}
\format{
  A data frame with 1093 observations on the following 12 variables.
  \describe{
    \item{\code{itmno}}{item number}
    \item{\code{word}}{the word}
    \item{\code{imagery}}{imagery rating}
    \item{\code{concreteness}}{concreteness rating}
    \item{\code{letters}}{number of letters}
    \item{\code{frequency}}{word frequency, from the Kucera-Francis norms}
    \item{\code{foa}}{a measure of first order approximation to English}
    \item{\code{soa}}{a measure of second order approximation to English}
    \item{\code{onr}}{Orthographic neighbor ratio}
    \item{\code{dictcode}}{dictionary codes, a factor indicating 
    	the collection of grammatical classes, 1-6, for a given word form}
    \item{\code{noun}}{percent noun usage}
    \item{\code{canadian}}{a factor indicating an alternative Canadian spelling of a given word}
  }
}

\details{
The last 13 words in the list are alternative Canadian spellings of words
listed earlier, and have duplicate \code{itmno} values.
}
\source{
Friendly, M., Franklin, P., Hoffman, D. & Rubin, D. The Toronto Word Pool,
\emph{Behavior Research Methods and Instrumentation}, 1982, 14(4), 375-399.
}
%\references{
%%%  ~~ possibly secondary sources and usages ~~
%}
\examples{
data(TWP)
str(TWP)
summary(TWP)
}
\keyword{datasets}
