## R CMD check results

0 errors | 0 warnings | 0 notes

* This release states minimum versions for the three suite packages the
  metapackage installs and attaches: distionary (>= 0.2.0), distplyr
  (>= 0.3.0) and famish (>= 0.2.1). Without them, installing probaverse into
  a library holding an older mix of the suite left that mix in place.

Checked with `R CMD check --as-cran` locally (macOS, R 4.6.0) against those
versions.

## Reverse dependencies

probaverse has no reverse dependencies.
