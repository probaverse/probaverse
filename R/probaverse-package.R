#' @keywords internal
"_PACKAGE"

## usethis namespace: start
## usethis namespace: end
NULL


# From tidyverse:
# Suppress R CMD check note
# Namespace in Imports field not imported from: PKG
#   All declared Imports should be used.
ignore_unused_imports <- function() {
  distionary::distribution
  distplyr::mix
  famish::fit_dst
}
