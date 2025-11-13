test_that("All core packages load correctly", {
  expect_true(requireNamespace("distionary", quietly = TRUE))
  expect_true(requireNamespace("distplyr", quietly = TRUE))
  expect_true(requireNamespace("famish", quietly = TRUE))
})

test_that("ignore_unused_imports() trick doesn't error.", {
  expect_no_error(ignore_unused_imports())
})
