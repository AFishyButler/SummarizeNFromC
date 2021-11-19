
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SummarizeCFromN

<!-- badges: start -->
<!-- badges: end -->

The goal of SummarizeNFromC is to output a tibble containing the mean,
range, and standard deviation of some numerical object as sorted into
some category.

## Installation

devtools::install\_github(“AFishyButler/SummarizeNFromC”)

## Example

This is a basic example which shows the basic functionality of the
package: a tibble output containing the mean, range, and standard
deviation of the diameter of a tree dependent on cultivar.

``` r
library(datateachr)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
library(magrittr)
library(SummarizeCFromN)

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

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/master/examples>.

You can also embed plots, for example:

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
