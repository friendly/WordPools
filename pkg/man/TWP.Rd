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
    \item{\code{foa}}{a measure of first order approximation to English. 
    In a first-order approximation, the probability of
		generating any string of letters is based on the frequencies of
		occurrence of individual letters in the language.}
    \item{\code{soa}}{a measure of second order approximation to English, bawsed on bigram frequencies.}
    \item{\code{onr}}{Orthographic neighbor ratio, taken from
		Landauer and Streeter (1973). It is the ratio of the frequency of
		the word in Kucera and Francis (1967) count divided by the sum
		of the frequencies of all its orthographic neighbors. }
    \item{\code{dictcode}}{dictionary codes, a factor indicating 
    	the collection of grammatical classes, 1-5, for a given word form}.
    	In the code, "1" in any position means the item had a dictionary definition as a noun;
		similarly, a "2" means a verb, "3" means an adjective, "4"
		means an adverb, and "5" was used to cover all other grammatical
		categories (but in practice was chiefly a preposition). Thus
		an entry "2130" indicates an item defined as a verb, noun, and
		an adjective in that order of historical precedence.

    \item{\code{noun}}{percent noun usage. Words considered unambiguous based on \code{dictcode}
    	are listed as 0 or 100; other items were rated in a judgment task. }
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
\url{http://datavis.ca/papers/twp.pdf}.
}
\references{

Kucera and Francis, W.N. (1967). 
\emph{Computational Analysis of Present-Day American English}. Providence: Brown University Press. 

Landauer, T. K., & Streeter, L. A.  Structural differences
between common and rare words: Failure of equivalent assumptions
for theories of word recognition. \emph{Journal of Verbal Learning and
Verbal Behavior}, 1973, 11, 119-131.
}
\examples{
data(TWP)
str(TWP)
summary(TWP)

# select low imagery, concreteness and frequency words
R <- list(imagery=c(1,5), concreteness=c(1,4), frequency=c(0,30))
pickList(TWP, R)



}
\keyword{datasets}
