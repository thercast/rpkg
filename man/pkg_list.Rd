% Generated by roxygen2 (4.1.0.9001): do not edit by hand
% Please edit documentation in R/list.R
\name{pkg_list}
\alias{pkg_list}
\title{List installed packages}
\usage{
pkg_list(lib = pkg_paths())
}
\arguments{
\item{lib}{Character vector of library directories,
defaults to \code{\link{pkg_paths}}.}
}
\value{
An rpkg list of packages.
}
\description{
List installed packages in some library directories.
}
\examples{
pkg_list()
}
