\name{CatProp}
\alias{CatProp}
\docType{data}
\title{
Joelson-Hermann Category Properties
}
\description{
Properties of the 56 taxonomic categories from the Battig-Montague
category norms published by Joelson and Hermann (1978).
}
\usage{data(CatProp)}
\format{
A data frame with 56 observations on the following 24 variables.
  \describe{
    \item{\code{catnum}}{Category number, a numeric variable}
    \item{\code{catname}}{Category name, a character variab}
    \item{\code{rnatrl}}{Rated naturalness 1..7, a numeric variable}
    \item{\code{rfamil}}{Rated familiarity 1..7, a numeric variable}
    \item{\code{rmeang}}{Rated meaningfulness 1..7 (Hunt & Hodge, 1971), a numeric variable}
    \item{\code{rfreq}}{Rated frequency 1..7 B&M, a numeric variable}
    \item{\code{genfreq}}{Generated category label frequency, a numeric variable}
    \item{\code{rageoaq}}{Rated age of acquisition 1..10, a numeric variable}
    \item{\code{rsize}}{Estimated category size, a numeric variable}
    \item{\code{ts_30}}{Mean # types produced in 30 seconds, a numeric variable}
    \item{\code{rclasm}}{Recall asymptote, a numeric variable}
    \item{\code{rclrate}}{Recall rate parameter, a numeric variable}
    \item{\code{tas}}{Types across subjects, a numeric variable}
    \item{\code{cortas}}{Corrected types across subjects, a numeric variable}
    \item{\code{ntf}}{# of types produced first, a numeric variable}
    \item{\code{nmngox}}{# of dictionary meanings (Oxford), a numeric variable}
    \item{\code{nmngam}}{# of dictionary meanings (Am. Heritage), a numeric variable}
    \item{\code{catfreqp}}{category label K-F frequency, a numeric variable}
    \item{\code{rabcon}}{Rated abstract-concreteness 1..7, a numeric variable}
    \item{\code{rvagprc}}{Rated vague-precise 1..7, a numeric variable}
    \item{\code{exfreqp}}{Avg exemplar log K-F frequency, a numeric variable}
    \item{\code{intsam}}{Intersample correlation, a numeric variable}
    \item{\code{maxfreq}}{Maximum response frequency, a numeric variable}
    \item{\code{pagmt}}{Percent agreement on category membership, a numeric variable}
  }
}
\details{
Includes data for all 56 of the Battig-Montague categories  from a preprint of 
the Joelson-Hermann paper
Values for \code{catfreqp} were added for categories 3, 4, 8, 15, 24, 27,
32, 46, 47 & 56 from the Kucera-Francis norms, ignoring "part of", "unit of", and
taking max of labels connected by "or".
}
\source{
Joelson, J. M. & Hermann, D. J. , Properties of categories in semantic
memory, \emph{American Journal of Psychology}, 1978, 91, 101-114.
}
%\references{
%%%  ~~ possibly secondary sources and usages ~~
%}
\examples{
data(CatProp)
summary(CatProp)
plot(CatProp[,3:10])

# try a biplot
CP <- CatProp
rownames(CP) <- CP$catname
biplot(prcomp(na.omit(CP[,3:12]), scale=TRUE))

# select some categories where the rated age of acquisition is between 2-4
cats <- pickList(CatProp, list(rageoaq=c(2,4)))
cats[,2:9]

# pick some fruit
pickList(subset(Battig, catname=="fruit"))
}
\keyword{datasets}
