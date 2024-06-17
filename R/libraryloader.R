#' Prepare libraries for loading
#'
#' @param package_list A list of package names necessary for functional loading
#' @export
required_package <- function(x){
  if (!all(x %in% installed.packages()[,'Package'])){
    print('Installing Required Packages . . .')
    lapply(x,install.packages,character.only = TRUE)
    print('Required Packages installed')
  }else{
    lapply(x,library,character.only = TRUE)
    print(glue("Package {x} is already installed and loaded!"))
  }
}
