---
title: "README.Rmd"
author: "Marc Eres"
date: "21/9/2021"
output: html_document
---

[![Build Status](https://app.travis-ci.com/MarcEres/Final2.svg?branch=main)](https://app.travis-ci.com/MarcEres/Final2)

#Objective

The purpose of this assessment is for you to combine your skills of creating, writing, documenting, and testing an R package with releasing that package on GitHub. In this assessment you'll be taking the R files from Week 2's assessment about documentation and putting that file in an R package.

For this assessment you must

1.write a vignette to include in your package using knitr and R Markdown
2.write at least one test written using testthat
3.put your package on GitHub
4.set up the repository so that the package can be checked and built on Travis
5.Once your package has built on Travis and the build is passing with no errors, warnings, or notes you should 
6. add your Travis badge to the README.md file of your package repository.


# Benchmark

This packages aims to produce a benchmark between different
implementations of the Factorial.

## The `Factorial_loop` function
Computes the Factorial using a For loop.

## The `Factorial_reduce` function

Computes the Factorial using the reduce function.

## The `Factorial_func` function

Computes the Factorial using recursion.


## The `benchmark` function
Produce table with the time it took to compute the factorial

# Dependencies

* purrr
* microbenchmark
