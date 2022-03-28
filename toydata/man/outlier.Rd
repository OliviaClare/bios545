\name{outlier}
\alias{outlier}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Mean after getting rid of outlier}
\description{
Returns mean of x after applying specified percentile adjustments
}
\usage{
outlier(x, threshold = 0.1)
}

\arguments{
  \item{x}{
a numeric vector
}
  \item{threshold}{
a threshold (e.g. 0.10) that can be used to determine the appropriate percentiles (the percentiles in this case would be the 10th and the 90th (1-.10).)
}
}

\value{
mean of x after applying percentile adjustments
}
\references{
Homeowrk 2
}
\author{
Steve Pittard
}

\examples{
set.seed(123)
(myunif <- runif(20,1,10))
outlier(myunif,.10)
}
