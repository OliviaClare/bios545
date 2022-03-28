\name{digit_return}
\alias{digit_return}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
return the kth digit of x from the end of x
}
\description{
return the kth numeric digit of x beginning from the end of x.
}
\usage{
digit_return(x = 789, k = 1, opp = FALSE)
}

\arguments{
  \item{x}{
a numeric or character value (e.g. 789 or "789")
}
  \item{k}{
a numeric value from 1 to the length of **x** including a possible "-" symbol for negative numbers
}
  \item{opp}{
a logical value TRUE or FALSE (default FALSE)
}
}
\details{
The function takes a numeric or character value for **x**.
}
\value{
A single digit
}
\references{
homework 2
}
\author{
Steve Pittard
}

\examples{
digit_return(x=789,k=3,opp=FALSE)
digit_return(x=-789,k=1,opp=FALSE)
}

