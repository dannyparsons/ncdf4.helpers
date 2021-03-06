\name{nc.make.time.bounds}
\alias{nc.make.time.bounds}
\title{Creates time bounds for a time series}
\usage{
nc.make.time.bounds(ts, unit = c("year", "month"))
}
\arguments{
  \item{ts}{The time values, of type \code{PCICt}}

  \item{unit}{The units to be used.}
}
\value{
2-dimensional bounds array for the time values with
dimensions [length(ts), 2].
}
\description{
Creates time bounds for a time series.
}
\details{
When aggregating data along the time axis, it is
occasionally useful to be able to generate bounds for that
data. This function will, given a time series of PCICt,
returns a set of bounds for that time series based the
supplied units.
}
\examples{
library(PCICt)
ts <- as.PCICt(c("1961-01-15", "1961-02-15", "1961-03-15"), cal="360")
ts.bounds <- nc.make.time.bounds(ts, unit="month")
}
\references{
\url{http://cf-pcmdi.llnl.gov/documents/cf-conventions/1.6/ch07s04.html}
}

