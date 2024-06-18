library(testthat)
library(libraryloader)

options(repos = "https://cloud.r-project.org")

test_that("Test required_package function loading libraries correctly", {
  pkg_list <- c("data.table", "ggplot2")
  required_package(pkg_list)
  expect_true(all(pkg_list %in% loadedNamespaces()),
              "All packages should be loaded after calling required_package")
})
