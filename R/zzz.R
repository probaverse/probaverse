.onAttach <- function(libname, pkgname) {
  # Check if distionary is installed
  if ("distionary" %in% rownames(installed.packages())) {
    installed_version <- packageVersion("distionary")

    # If the wrong version is installed, remove it and reinstall the correct one
    if (installed_version != "0.0.2") {
      message("Incorrect version of distionary detected. Reinstalling version 0.0.2 from GitHub...")
      remove.packages("distionary")
      devtools::install_github("probaverse/distionary@v0.0.2")
    }
  }
  suppressMessages({
    library(distionary)
    library(distplyr)
    library(famish)
    library(uscore)
  })
}
