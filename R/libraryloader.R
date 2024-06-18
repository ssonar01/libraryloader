#' Prepare libraries for loading
#'
#' @param x A vector of package names necessary for functional loading
#' @export
#' @import glue
#' @importFrom utils install.packages installed.packages
required_package <- function(x){
  if (!all(x %in% utils::installed.packages()[,'Package'])){
    print('Installing Required Packages . . .')
    lapply(x,utils::install.packages,character.only = TRUE)
    print('Required Packages installed')
  }else{
    lapply(x,library,character.only = TRUE)
    print(glue::glue("Package {x} is already installed and loaded!"))
  }
}
