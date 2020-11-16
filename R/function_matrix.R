#' This function converts a dataframe to a matrix suitable for plugging into the iNEXT function.
#' 
#' @param x dataframe with species, site_names, and count/abundance in 3 separate columns
#' @param Species column with list of species (character)
#' @param Site_names column with list of sites (character)
#' @param Count column with list of counts or abundances for each species at each site (numeric)
#' @return matrix of the dataframe
#' 
#' @example 
#' beematrix <- bees %>% 
#' + group_by(Species, Mo_since_burn_grouped) %>% 
#' + summarise(totalCount = sum(Count)) %>% 
#' + spread(months_since_burn, totalCount)
#' beematrix[is.na(beematrix)] <- 0
#' beematrixx <- subset(beematrix, select = -1)
#' beematrixx <- as.matrix(beematrixx)


beematrix <- function(x) {
  assert_that(is.character(Site_names)) 
    group_by(Species, Site_names) %>% 
    summarise(totalCount = sum(Count)) %>% 
    spread(Site_name, totalCount)
  beematrix[is.na(beematrix)] <- 0
  beematrixx <- subset(beematrix, select = -1)
  beematrixx <- as.matrix(beematrixx)
  assert_that(is.matrix(x))
  return(beematrixx)
} 