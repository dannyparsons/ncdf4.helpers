\name{nc.get.variable.list}
\alias{nc.get.variable.list}
\title{Get a list of names of data variables}
\usage{
nc.get.variable.list(f, min.dims = 1)
}
\arguments{
  \item{f}{The file (an object of class \code{ncdf4})}

  \item{min.dims}{The minimum number of dimensions a
  variable must have to be included.}
}
\value{
A character vector naming all of the data variables found.
}
\description{
Get a list of names of data variables.
}
\details{
This function returns the names of any data variables found
in the file -- that is, variables which are NOT dimension
variables, dimension bounds variables, climatology bounds
variables, coordinate variables, or grid mapping variables.

Optionally, one may require that the variables have a
minimum number of dimensions; this can eliminate unwanted
variables left in files.
}
\examples{
## Get dimension axes from file by inferring them from dimension names
\dontrun{
f <- nc_open("pr.nc")
var.list <- nc.get.variable.list(f)
nc_close(f)
}
}

