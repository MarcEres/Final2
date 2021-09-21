#' Factorial Loop
#'
#' This is a simple function that calculates the Factorial using a loop
#'
#' @param x Numeric or integer to calculate the factorial from
#'
#' @return Returns the factorial
#'
#'
#' @examples
#' Factorial_loop(5)
#'
#' @export
Factorial_loop <- function(x) {
  ## Make sure that the x is a number
  x <- as.numeric(x)

  res <- 1
  for( i in 1:x){
    ## 0! = 1
    if (x == 0) {
      res <- 1
      break
    }
    res <- res * i
  }
  res
}

#' Factorial Reduce
#'
#' This is a simple function that calculates the Factorial using reduce
#'
#' @param x Numeric or integer to calculate the factorial from
#'
#' @return Returns the factorial
#'
#' @import purrr
#'
#' @examples
#' Factorial_reduce(5)
#'
#' @export

Factorial_reduce <- function(x) {
  ## Make sure that the x is a number
  x <- as.numeric(x)

  ## 0! = 1
  if(x != 0){
    ## First we create a vector with all the numbers required

    vec <- c(1:x)

    ## Then we apply the reduce operation
    res <- reduce(vec, function(x,y) {
      x * y
    })
  }else{
    res <- 1
  }
  res
}

#' Factorial Recursion
#'
#' This is a simple function that calculates the Factorial using recursion
#'
#' @param x Numeric or integer to calculate the factorial from
#'
#' @return Returns the factorial
#'
#'
#' @examples
#' Factorial_func(5)
#'
#' @export

Factorial_func <- function(x){
  ## Make sure that the x is a number
  x <- as.numeric(x)
  ## 0! = 1
  if (x == 0){
    1
  }else{
    x * Factorial_func(x-1)
  }
}


#' Factorial Memoization
#'
#' This is a simple function that calculates the Factorial using memoization
#'
#' @param x Numeric or integer to calculate the factorial from
#'
#' @return Returns the factorial
#'
#'
#' @details In order for this function to work you have to create a table previously
#' fac_tbl <- c(rep(NA,x))
#'
#' @examples
#' Factorial_mem(5)
#'
#' @export
Factorial_mem <- function(x){
  ## Make sure that the x is a number
  x <- as.numeric(x)
  ## 0! = 1
  if (x == 0){
    1
  }else{
    fac_tbl[x] <<- x * Factorial_func(x-1)
  }
  fac_tbl[x]
}

#' Benchmark
#'
#' Comparison made between the four different implementations with the microbenchmark package.
#'
#' @param x Numeric or integer to calculate the factorial from
#'
#' @return Returns a table with the time it cost to produce each result
#'
#' @import microbenchmark
#'
#' @examples
#' Factorial_loop(5)
#'
#' @export
benchmark <- function (x) {
        microbenchmark(
                result <- Factorial_loop(x),

                result <- Factorial_reduce(x),

                result <- Factorial_func(x),

                result <- Factorial_mem(x)
        )
}
