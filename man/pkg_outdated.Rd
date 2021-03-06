% Generated by roxygen2 (4.1.0.9001): do not edit by hand
% Please edit documentation in R/upgrade.R
\name{pkg_outdated}
\alias{pkg_outdated}
\title{List outdated packages}
\usage{
pkg_outdated(filter = "", global = FALSE, print = TRUE)
}
\arguments{
\item{filter}{Regular expression to filter packages to check.}

\item{global}{Whether to consider global or local packages.}

\item{print}{Whether to print list of outdated packages.}
}
\value{
A data frame with columns: package, installed, latest.
}
\description{
List outdated packages
}

