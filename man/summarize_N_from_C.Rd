% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summarize_N_from_C.R
\name{summarize_N_from_C}
\alias{summarize_N_from_C}
\title{Calculate the mean of a numeric object dependent on a character object}
\usage{
summarize_N_from_C(df, C, N)
}
\arguments{
\item{df}{Denotes the dataframe used}

\item{C}{Is a character object; named this way as it must be a character}

\item{N}{Is a numerical object; named this way as it must be numerical}
}
\value{
A tibble with basic statistic summaries
}
\description{
This function calculates the mean of a numerical object "N", as grouped by character object "C"
}
\examples{
summarize_N_from_C (datateachr::vancouver_trees, cultivar_name , diameter )
summarize_N_from_C(datateachr::apt_buildings,balconies, no_barrier_free_accessible_units )
}
