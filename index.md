# probaverse

‘probaverse’ makes probability distributions routine data structures in
R. Inspired by the cohesive design of the
[‘tidyverse’](https://tidyverse.tidyverse.org/), it installs and
attaches the core packages in the ‘probaverse’ suite with a single
[`library()`](https://rdrr.io/r/base/library.html) call.

## Target Audience

The ‘probaverse’ is designed for anyone who wants to work with
probability distributions in R. It is particularly useful for data
scientists, statisticians, and researchers who require the flexibility
to develop advanced statistical models. Special focus is put on risk and
hazard modelling, where distributions are heavily used in practice;
therefore, those in fields such as finance, insurance, environmental
science, and engineering may find the ‘probaverse’ particularly
appealing.

## Core Features

Advanced statistical models can rarely be achieved with out-of-the-box
distributions typically found in probability textbooks. Instead,
distributions need to be manipulated, combined, and refined to match
specific benchmarks like data or expert judgement. They need to be
evaluated in ways that are meaningful to your application. The
‘probaverse’ packages work in harmony to provide a workbench for this
process using a human-friendly interface.

This workbench would be too vast and unweidly implemented as a single
package. Instead, each concern is separated into separate packages.

- [‘distionary’](https://distionary.probaverse.com) provides tools to
  defines and evaluate distributions by specifying properties that you
  know about the distribution.
- [‘distplyr’](https://distplyr.probaverse.com) allows you to manipulate
  and combine distributions so that they can more realistically
  represent your system.
- [‘famish’](https://famish.probaverse.com) aims to ground distributions
  based on benchmarks, such as estimating distributions from data, or
  refining distributions to match expert judgement.

## Installation

Install ‘probaverse’ from CRAN with:

``` r
install.packages("probaverse")
```

## Usage

Load every ‘probaverse’ package with a single command:

``` r
library(probaverse)
#> ── Attaching core probaverse packages ──────────────────────────────────────────
#> ✔ distionary   0.1.0   Create and Evaluate Probability Distributions
#> ✔ distplyr     0.2.0   Manipulate and Combine Probability Distributions
#> ✔ famish       0.2.0   Flexibly Tune Families of Probability Distributions
```

## Future Goals

The ‘probaverse’ has bigger long-term goals than what it’s currently
capable of. Here are just a few of the longer term goals:

- Implementing multivariate distributions, especially through copulas.
- Extending options for fitting non-parametric distributions.
- Creating custom distribution *families* rather than just individual
  distributions.
- Improving support for distributions with discrete components.

Additional features will be added as development continues. We
appreciate your patience and welcome contributions! Please see the
[contributing guide](https://probaverse.probaverse.com/contributing) to
get started.

## Acknowledgments

The creation of ‘probaverse’ would not have been possible without the
support of BGC Engineering Inc., the R Consortium (via ‘distionary’),
the European Space Agency, and the Politecnico di Milano, The University
of British Columbia, the Natural Science and Engineering Research
Council of Canada (NSERC). The authors would also like to thank the
reviewers from ROpenSci for their insightful feedback in the core
‘distionary’ package that powers the ‘probaverse’ suite. Lastly, thanks
to the developers of ‘tidyverse’ for providing a model for cohesive
design and appropriate structure of a meta-package.

## Code of Conduct

Please note that the ‘probaverse’ project is released with a [Code of
Conduct](https://probaverse.probaverse.com/code_of_conduct). By
contributing to this project, you agree to abide by its terms.
