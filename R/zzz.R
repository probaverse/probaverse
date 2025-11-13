.onAttach <- function(libname, pkgname) {
  package_descriptions <- c(
    distionary = "Create and Evaluate Probability Distributions\n",
    distplyr = "Manipulate and Combine Probability Distributions\n",
    famish = "Flexibly Tune Families of Probability Distributions\n"
  )
  core_packages <- names(package_descriptions)

  already_loaded <- vapply(
    core_packages,
    function(pkg) paste0("package:", pkg) %in% search(),
    logical(1)
  )

  pkgs_to_attach <- core_packages[!already_loaded]

  if (length(pkgs_to_attach) == 0L) {
    return(invisible())
  }

  suppressPackageStartupMessages(
    lapply(
      pkgs_to_attach,
      library,
      character.only = TRUE,
      quietly = TRUE,
      warn.conflicts = FALSE
    )
  )

  pkg_versions <- vapply(
    pkgs_to_attach,
    function(pkg) as.character(utils::packageVersion(pkg)),
    character(1)
  )

  rule <- function(text) {
    width <- getOption("width")
    line_length <- max(0, width - nchar(text) - 4L)
    paste0("\u2500\u2500 ", text, " ", strrep("\u2500", line_length))
  }

  header <- paste0(rule("Attaching core probaverse packages"), "\n")
  name_width <- max(nchar(pkgs_to_attach)) + 2
  version_width <- max(nchar(pkg_versions)) + 2
  tick <- "\u2714"
  body <- sprintf(
    "%s %-*s %-*s %s",
    tick,
    name_width,
    pkgs_to_attach,
    version_width,
    pkg_versions,
    unname(package_descriptions[pkgs_to_attach])
  )

  packageStartupMessage(c(header, body))
}
