\name{WordPools-package}
\alias{WordPools-package}
\alias{WordPools}
\docType{package}
\title{
Classical Word Pools Used in Studies of Learning and Memory
}
\description{
This package collects several classical word pools used
most often to provide lists of words in psychological
studies of learning and memory.  


Each word pool consists of a population of words, together
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
Version: \tab 1.1-1\cr
Date: \tab 2018-12-14\cr
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
Paivio, A., Yuille, J.C. & Madigan S. Concreteness, imagery and
meaningfulness for 925 nouns.  \emph{Journal of Experimental Psychology,
Monograph Supplement}, 1968, 76, No.1, pt.2.

Battig, W.F.  & Montague, W.E. (1969).
    Category norms for verbal items in 56 categories: A replication and extension of the Connecticut norms.
    \emph{Journal of Experimental Psychology}, 80 (1969), pp. 1-46

Friendly, M., Franklin, P., Hoffman, D. & Rubin, D. The Toronto Word Pool,
\emph{Behavior Research Methods and Instrumentation}, 1982, 14(4), 375-399.
\url{http://datavis.ca/papers/twp.pdf}.

Friendly, M. (2006) Word list generator. \url{http://datavis.ca/online/paivio/}

Rubin, D. C. & Friendly, M. (1986).
Predicting which words get recalled: Measures of free recall, availability, goodness, emotionality, and pronunciability for 925 nouns.
\emph{Memory and Cognition}, 14, 79-94.


See also \url{http://memory.psych.upenn.edu/Word_Pools} 
for other related word pools

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
