
<!-- README.md is generated from README.Rmd. Please edit that file -->
makeproject
===========

<!-- badges: start -->
<!-- badges: end -->
The goal of makeproject is to quickly deploy new project folders, with a consistent architecture.

Installation
------------

You can install the released version of makeproject from [Github](https://github.com/nibortolum/makeproject) with:

``` r
library(devtools)
install_github("https://github.com/nibortolum/makeproject")
```

More advanced versions will be pushed to CRAN in the future.

Example
-------

This is a basic example which shows you how to crete a project folder:

``` r
library(makeproject)

## Once in the proper folder :

make_project("kickassAnalysis")
```

Do not pur white spaces in your poject name. It will be ugly and may mess up with path handling, depending on which OS youre working on.
