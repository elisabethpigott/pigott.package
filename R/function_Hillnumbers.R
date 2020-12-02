#'#'This function incorporates species assemblages and reports the effective number of species as Hill Numbers of the order q. Hill Numbers can be used to measure species diversity.
#'
#'@param x matrix, data.frame, vector, or list of species abundances or incidence frequencies to use
#'@param q numeric value specifying the diversity order of Hill number which determines sensitivity to species relative abundances
#'@param datatype individual based abundance data 
#'@return effective number of species
#'@importFrom assertthat assert_that
#'@export
#' 
#'@example
#'iNEXT(beematrixx, q = 0, datatype = "abundance")


richness <- function(x, q = 0, datatype = "abundance") {
  
  assert_that(is.matrix(x))
  richness <- iNEXT(x, q = 0, datatype = "abundance")
  richnessplot <- ggiNEXT(richness) 
  return(richnessplot)
}

#'This function incorporates Shannon diversity and reports the effective number of species as Hill Numbers of the order q.
#'
#'@param x matrix, data.frame, vector, or list of species abundances or incidence frequencies to use
#'@param q numeric value specifying the diversity order of Hill number
#'@param datatype individual based abundance data 
#'@return effective number of species
#'@importFrom assertthat assert_that
#'@export
#' 
#'@example
#'iNEXT(beematrixx, q = 1, datatype = "abundance")


shannon <- function(x, q = 1, datatype = "abundance") {
  
  assert_that(is.matrix(x))
  shannon <- iNEXT(x, q = 1, datatype = "abundance")
  shannonplot <- ggiNEXT(shannon)
  return(shannonplot)
}

#'This function incorporates Simpson diversity and reports the effective number of species as Hill Numbers of the order q.
#'
#'@param x matrix, data.frame, vector, or list of species abundances or incidence frequencies to use
#'@param q numeric value specifying the diversity order of Hill number
#'@param datatype individual based abundance data 
#'@return effective number of species
#'@importFrom assertthat assert_that
#'@export
#' 
#'@example
#'iNEXT(beematrixx, q = 2, datatype = "abundance")


simpson <- function(x, q = 2, datatype = "abundance") {
  
  assert_that(is.matrix(x))
  simpson <- iNEXT(x, q = 2, datatpe = "abundance")
  simpsonplot <- ggiNEXT(simpson)
  return(simpsonplot)
}