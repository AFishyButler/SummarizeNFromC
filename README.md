
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SummarizeCFromN

<!-- badges: start -->
<!-- badges: end -->

The goal of SummarizeNFromC is to output a tibble containing the mean,
range, and standard deviation of some numerical object as sorted into
some category.

## Installation and how to run code

### Installation

This package is not released on CRAN. With this, you can use the
devtools package to install straight from this repository.

``` r
suppressPackageStartupMessages(devtools::install_github("AFishyButler/SummarizeNFromC"))
#> Skipping install of 'SummarizeNFromC' from a github remote, the SHA1 (3cb2feda) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

### Running the code

Once installed, all code can be executed in RStudio from either a new or
existing project.

## Example

This is a basic example which shows the basic functionality of the
package: a tibble output containing the mean, range, and standard
deviation of the diameter of a tree dependent on cultivar.

``` r
suppressPackageStartupMessages(library(datateachr))
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(magrittr))
suppressPackageStartupMessages(library(SummarizeCFromN))

(summarize_N_from_C (vancouver_trees, cultivar_name , diameter ))
#> # A tibble: 588 x 4
#> # Groups:   cultivar_name [294]
#>    cultivar_name  mean range    sd
#>    <chr>         <dbl> <dbl> <dbl>
#>  1 ACCOLADE      20.8    3   8.52 
#>  2 ACCOLADE      20.8   42   8.52 
#>  3 AKEBONO        7.76   0   7.93 
#>  4 AKEBONO        7.76  66   7.93 
#>  5 ALIA           5.33   5   0.289
#>  6 ALIA           5.33   5.5 0.289
#>  7 ALLGOLD        3.81   2   1.79 
#>  8 ALLGOLD        3.81  11.5 1.79 
#>  9 ALMIRA        17.4    5   8.28 
#> 10 ALMIRA        17.4   29   8.28 
#> # ... with 578 more rows
```

This function is compatible with any dataframe so long as one object is
of character class and the other is numerical
