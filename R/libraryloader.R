#' Prepare libraries for loading
#'
#' @param pkgs A vector of package names necessary for functional loading
#' @export
#' @import glue
#' @importFrom utils install.packages installed.packages
required_package <- function(pkgs){
  lapply(pkgs, function(pkg){
    if(!requireNamespace(pkg, quietly = TRUE)){
      utils::install.packages(pkg,repos = "https://cloud.r-project.org")
    }
    library(pkg, character.only = TRUE)
  })
}
