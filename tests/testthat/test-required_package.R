library(testthat)
library(libraryloader)

test_check("required_package is working correctly",{
  pkg_list <- c("devtools","usethis","roxygen2","testthat")
  required_package(pkg_list)

})
