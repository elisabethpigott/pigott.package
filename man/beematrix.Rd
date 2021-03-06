% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/function_matrix.R
\name{beematrix}
\alias{beematrix}
\title{This function converts a dataframe to a matrix suitable for plugging into the iNEXT function.}
\usage{
beematrix(x, Species, Mo_since_burn_grouped, Count)
}
\arguments{
\item{x}{dataframe with species, site_names, and count/abundance in 3 separate columns}

\item{Species}{column with list of species (character)}

\item{Mo_since_burn_grouped}{column with list of sites (character)}

\item{Count}{column with list of counts or abundances for each species at each site (numeric)}
}
\value{
matrix of the dataframe
}
\description{
This function converts a dataframe to a matrix suitable for plugging into the iNEXT function.
}
