\name{get.f.step.size}
\alias{get.f.step.size}
\title{Get step size for data}
\usage{
get.f.step.size(d, f)
}
\arguments{
  \item{d}{The data to have the step size determined}

  \item{f}{The function to aggregate the step size}
}
\value{
The step size
}
\description{
Get step size for data.
}
\details{
Gets the step size for data, aggregated by the supplied
function. This is useful when you want to know the mean
timestep size, median, minimum, range, etc for the purposes
of classifying data by time resolution.
}
\examples{
dat <- c(1, 2, 3, 4, 5, 7)
## Will be 2
max.step.size <- get.f.step.size(dat, max)
## Will be 1
min.step.size <- get.f.step.size(dat, min)
}

