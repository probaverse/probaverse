.onAttach <- function(libname, pkgname) {
  suppressMessages({
    library(distionary)
    library(distplyr)
    library(famish)
    library(uscore)
  })
}
