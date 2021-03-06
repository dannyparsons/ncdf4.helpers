\name{nc.get.time.series}
\alias{nc.get.time.series}
\title{Returns time axis data as PCICt for a file}
\usage{
nc.get.time.series(f, v, time.dim.name, correct.for.gregorian.julian = FALSE,
  return.bounds = FALSE)
}
\arguments{
  \item{f}{The file (an object of class \code{ncdf4})}

  \item{v}{Optionally, the variable to look for a time
  dimension on.}

  \item{time.dim.name}{Optionally, the time dimension
  name.}

  \item{correct.for.gregorian.julian}{Specific workaround
  for Gregorian-Julian calendar transitions in
  non-proleptic Gregorian calendars}

  \item{return.bounds}{Whether to return the time bounds as
  an additional attribute}
}
\value{
A vector of PCICt objects, optionally with bounds
}
\description{
Returns time axis data as PCICt for a file.
}
\details{
Retrieving time data from a NetCDF file in an intelligible
format is a non-trivial problem. The \code{PCICt} package
solves part of this problem by allowing for 365- and
360-day calendars. This function complements it by returns
time data for a file as \code{PCICt}, doing all necessary
conversions.
}
\note{
If the file was opened with \code{readunlim=FALSE}, it will
read in the time values from the file; otherwise, it will
retrieve the time values from the \code{ncdf4} class' data
structures.
}
\examples{
## Get time series from file
\dontrun{
f <- nc_open("pr.nc")
ts <- nc.get.time.series(f)
nc_close(f)
}
}
\references{
\url{http://cf-pcmdi.llnl.gov/documents/cf-conventions/1.6/ch04s04.html}
}

