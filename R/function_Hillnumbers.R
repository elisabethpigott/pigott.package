#'#'This function incorporates species richness, Shannon diversity, and Simpson diversity and reports the effective number of species as Hill Numbers of the order q.
#'
#'@param x matrix, data.frame, vector, or list of species abundances or incidence frequencies to use
#'@param q numeric value specifying the diversity order of Hill number
#'@param datatype individual based abundance data 
#'@return effective number of species
#'
#'@example
#'iNEXT(beematrixx, q = 0, datatype = "abundance")
#'iNEXT(beematrixx, q = 1, datatype = "abundance")
#'iNEXT(beematrixx, q = 2, datatype = "abundance")


richness <- function(x, q = 0, datatype = "abundance") {
  
  assert_that(is.matrix(x))
  richness <- iNEXT(x, q = 0, datatype = "abundance")
  richnessplot <- ggiNEXT(richness) 
  return(richnessplot)
}

shannon <- function(x, q = 1, datatype = "abundance") {
  
  assert_that(is.matrix(x))
  shannon <- iNEXT(x, q = 1, datatype = "abundance")
  shannonplot <- ggiNEXT(shannon)
  return(shannonplot)
}

simpson <- function(x, q = 2, datatype = "abundance") {
  
  assert_that(is.matrix(x))
  simpson <- iNEXT(x, q = 2, datatpe = "abundance")
  simpsonplot <- ggiNEXT(simpson)
  return(simpsonplot)
}