\name{WordPools-package}
\alias{WordPools-package}
\alias{WordPools}
\docType{package}
\title{
Classical word pools used in studies of learning and memory
}
\description{
This package collects several classical word pools used
most often to provide lists of words in psychological
studies of learning and memory.  

A word pool consists of a population of words, together
with various descriptive measures (number of letters,
number of syllables, word frequency, etc.) and 
normative measures (imagery, concreteness, etc.)
that can be used in experimental designs to vary
and control such factors.
}
\details{
\tabular{ll}{
Package: \tab WordPools\cr
Type: \tab Package\cr
Version: \tab 1.0-1\cr
Date: \tab 2012-12-07\cr
License: \tab GPL-2\cr
}
At present, the package contains three main word pools:

\code{\link{Paivio}} - the Paivio etal. (1968) word list of 925 nouns

\code{\link{TWP}} - the Friendly etal. (1982) Toronto Word Pool of 1080 words in various grammatical classes

\code{\link{Battig}} - the Battig & Montague (1969) Categorized Word Norms, containing 5231 words listed in 
56 taxonomic categories.  Various measures on these categories are given in \code{\link{CatProp}}.

In addition, the function \code{\link{pickList}} provides the ability to select items from such
lists with restrictions on the ranges of the measured variables.
}
\author{
Michael Friendly

Maintainer: Michael Friendly <friendly@yorku.ca>
}
\references{
Friendly, M. Word list generator. \url{http://datavis.ca/online/paivio/}

See also \url{http://memory.psych.upenn.edu/Word_Pools} for other related word pools

}
%~~ Optionally other standard keywords, one per line, from file KEYWORDS in the R ~~
%~~ documentation directory ~~
%\keyword{ package }
%\seealso{
%~~ Optional links to other man pages, e.g. ~~
%~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
%}
%\examples{
%~~ simple examples of the most important functions ~~
%}
