
<!-- README.md is generated from README.Rmd. Please edit that file -->

# manageproject

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/nibortolum/makeproject.svg?branch=master)](https://travis-ci.org/nibortolum/makeproject)
[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![](https://img.shields.io/badge/devel%20version-1.0.1-blue.svg)](https://github.com/nibortolum/makeproject)
<!-- badges: end -->

The goal of manageproject is to quickly deploy new project folders, with
a consistent architecture.

## Installation

You can install the released version of manageproject from
[Github](https://github.com/nibortolum/manageproject) with:

``` r
library(devtools)
install_github("https://github.com/nibortolum/manageproject")
```

More advanced versions will be pushed to CRAN in the future.

## Example

This is a basic example which shows you how to crete a project folder:

``` r
library(manageproject)

## Once in the proper folder :

make_project("kickassProject")
```

Do not put white spaces in your poject name. It will be ugly and may
mess up with path handling, depending on which OS you’re working on.

This function will create the following structure :

    ├── KickassProject
    │   ├── Data
    │   ├── Docs
    │   │   └── KickassProject_docs.Rmd
    │   ├── Figures
    │   ├── Gist
    │   ├── KickassProject_MainScript.R
    │   ├── References (optional)
    │   └── Sources

  - Data is the folder where you need to put the data (csv, .Rdata
    files, etc)
  - Docs is a folder in which you store documentation related to the
    ongoing project. It comes with a pretemplated Rmd file
  - Figures is the folder where to save the figures
  - Gist a folder where to store small useful pieces of codes
  - Sources is a folder where to place some functionnal R scripts
    containing ready-to-use functions you would like to import
  - References a folder holding the litterature related to your project
  - KickassProject\_MainScript.R is the pretemplated main project
    Script.
