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
%\references{
%%% ~put references to the literature/web site here ~
%}
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
	pickList(Paivio, nlists=2)
	
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
