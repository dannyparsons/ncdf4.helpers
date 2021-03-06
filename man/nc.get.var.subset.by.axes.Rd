\name{nc.get.var.subset.by.axes}
\alias{nc.get.var.subset.by.axes}
\title{Gets a data subset in the place described by the named list of axes}
\usage{
nc.get.var.subset.by.axes(f, v, axis.indices, axes.map = NULL)
}
\arguments{
  \item{f}{An object of class \code{ncdf4} which represents
  a NetCDF file.}

  \item{v}{A string naming a variable in a file or an
  object of class \code{ncvar4}.}

  \item{axis.indices}{A list consisting of zero or more
  vectors of indices, named by which axis they refer to (X,
  Y, T, etc).}

  \item{axes.map}{An optional vector mapping axes to NetCDF
  dimensions. If not supplied, it will be generated from
  the file.}
}
\description{
Gets a data subset in the place described by the named list
of axes.
}
\details{
This function will read data from the specified file
(\code{f}) and variable (\code{v}) at the location
specified by \code{axis.indices}.
}
\examples{
## Get a subset of the data.
\dontrun{
f <- nc_open("pr.nc")
dat <- nc.get.var.subset.by.axes(f1, "pr", list(X=1:4, Y=c(1, 3, 5)))
nc_close(f)
}
}
\seealso{
\code{\link{ncdf4.helpers-package}}
}

