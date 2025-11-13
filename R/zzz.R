.onAttach <- function(libname, pkgname) {
  # 1. Define the packages to load as a character vector
  pkgs_to_load <- c("distionary", "distplyr", "famish")

  # 2. Use lapply to iterate and load each package
  # Key elements:
  # - character.only = TRUE: Tells R to treat the argument as a package name (string).
  # - quietly = TRUE: Suppresses the standard "Starting X" message.
  suppressMessages({
    lapply(
      pkgs_to_load,
      library,
      character.only = TRUE,
      quietly = TRUE
    )
  })
}
