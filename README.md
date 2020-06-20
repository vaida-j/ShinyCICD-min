
# ShinyCICD

<!-- badges: start -->
[![Travis build status](https://travis-ci.com/vaida-j/ShinyCICD-min.svg?branch=master)](https://travis-ci.com/vaida-j/ShinyCICD-min)
[![R build status](https://github.com/vaida-j/ShinyCICD-min/workflows/CI-CD/badge.svg)](https://github.com/vaida-j/ShinyCICD-min/actions)
<!-- badges: end -->

The goal of ShinyCICD is to provide a simple example of packaged Shiny app to showcase CI/CD pipelines.

## Installation

You can install ShinyCICD from GitHub with

``` r
remotes::install_github("vaida-j/ShinyCICD-min")
```

The corresponding Shiny app can be then served launched by simply calling the `run_app()` exported function:

``` r
ShinyCICD::run_app()
```
