\name{ora-package}
\alias{ora-package}
\alias{ora}
\docType{package}
\title{Convenient Tools for Working with Oracle Databases}
\description{
  Basic functions to explore Oracle databases and import data into \R.
  User interface for the \pkg{ROracle} package.
}
\details{
  \emph{Explore database:}
  \tabular{ll}{
    \code{\link{tables}} \tab list tables\cr
    \code{\link{views}}  \tab list views
  }
  \emph{Examine table:}
  \tabular{ll}{
    \code{\link{desc}} \tab describe table or view
  }
  \emph{Import data:}
  \tabular{ll}{
    \code{\link{sql}} \tab import data
  }
}
\author{Arni Magnusson.}
\seealso{
  The functions that do the actual work are described in the \pkg{DBI}
  and \pkg{ROracle} packages.
}
