#===============================================================================
# check to see if a vector of packages names are already installed.
# if not, install them.  Requires a vector of package names as strings.
#===============================================================================

check_packages <- function(pckg){
  if (!(pckg %in% installed.packages()[,"Package"])){
    install.packages(pckg, dependencies = T)
  }
}