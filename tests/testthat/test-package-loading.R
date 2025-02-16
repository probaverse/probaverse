test_that("All core packages load correctly", {
  expect_true(requireNamespace("distionary", quietly = TRUE))
  expect_true(requireNamespace("distplyr", quietly = TRUE))
  expect_true(requireNamespace("famish", quietly = TRUE))
  expect_true(requireNamespace("uscore", quietly = TRUE))
})
