library(purrr)
library(microbenchmark)
library(testthat)

test_that("Testing the Factorial_loop function", {
       expect_equal(Factorial_loop(5), 120)})

test_that("Testing the Factorial_func function", {
      expect_equal(Factorial_func(5), 120)})
