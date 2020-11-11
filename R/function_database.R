#' Calculate volume of shrub 
#' 
#' @param length Length of the shrub (numeric, default 1)
#' @param width Width of shrub (numeric, default 1)
#' @param height Height of shrub (numeric, default 1)
#' @return volume of shrub (numeric) 
#' 
#' @examples 
#' calc_shrub_vol(length = 2, width = 3, height = 2)

calc_shrub_vol <- function(length = 1, width = 1, height = 1) {
     volume <- length * width * height
      return(volume)
}

#' Calculate mass of shrub
#' 
#' @param volume Volume of shrub (numeric)
#' @return mass of shrub (numeric)
#' 
#' @example
#' calc_shrub_mass(12)

calc_shrub_mass <- function(volume){
     mass <- 2.65*volume^0.9
     return(mass)
}

#' Calculate density of shrub
#' 
#' @param length Length of shrub (numeric, default 4)
#' @param width Width of shrub (numeric, default 2)
#' @param height height of shrub (numeric, default 1)
#' @return density of shrub (numeric, default 1)


calc_shrub_density <- function(width = 2, length = 4, height = 1){
  vol <- calc_shrub_vol(width, length, height)
  mass <- est_shrub_mass(vol)
  den <- mass/vol
  return(den)
}