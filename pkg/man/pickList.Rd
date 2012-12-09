\name{pickList}
\alias{pickList}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Select Items from a Word Pool in Given Ranges
}
\description{
This is a convenience function to provide the capability to 
select items from a given word pool, with restrictions on the
range of any numeric variables.
}
\usage{
pickList(data, ranges, nitems = 10, nlists = 1, replace = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
A data.frame, typically a word list like \code{\link{Paivio}} or \code{\link{TWP}}
}
  \item{ranges}{
A data.frame of two rows, and with column names corresponding to a subset of the
column names in \code{data}.  The two rows give the minimum and maximum
values, respectively, of variables in \code{data}.
}
  \item{nitems}{
Number of items per list
}
  \item{nlists}{
Number of lists
}
  \item{replace}{
A logical value, indicating whether the sampling of items (rows) of \code{data}
is to allow sampling with replacement.
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
A data frame of the same shape as \code{data} containing the selected items
}
\references{
Friendly, M. Word list generator. \url{http://datavis.ca/online/paivio/}
}
\author{
Michael Friendly
}
%\note{
%%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
data(Paivio)
# no selection on any variables
pickList(Paivio, nlists=2)

# define ranges for low and high on imagery, concreteness, meaningfulness
(low <- as.data.frame(apply(Paivio[,3:5], 2, fivenum))[c(1,3),])
(high <- as.data.frame(apply(Paivio[,3:5], 2, fivenum))[c(3,5),])

# select two lists of 10 low/high imagery items
lowI <- pickList(Paivio, low[,"imagery", drop=FALSE], nitems=10, nl=2)
highI <- pickList(Paivio, high[,"imagery", drop=FALSE], nitems=10, nl=2)

#compare means
colMeans(lowI[,c(4:8)])
colMeans(highI[,c(4:8)])

	
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
