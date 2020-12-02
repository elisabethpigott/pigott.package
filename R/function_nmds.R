#' This function performs nonmetric multidimensional scaling (NMDS) on a community data.frame and plots the NMDS to visualize dissimilarities.
#' 
#' @param x species community data.frame with species as cols and sites as rows
#' @param distance dissimilarity index used
#' @param autotransform automatic transformations of data points to whatever is most appropriate. To analyze raw data, set to =FALSE.
#' @return nmds plot of data.frame
#' @importFrom assertthat assert_that
#' @export
#' 
#' @example 
#' bee.mds <- metaMDS(x, distance = "bray", autotransform = FALSE)
#' bee.mdsplot <- ordiplot(bee.mds, type = "text")
 

nmdsplot <- function(x, distance = "bray", autotransform = FALSE) {
  
  assert_that(is.data.frame(x))
  bee.mds <- metaMDS(x, distance = "bray", autotransform = FALSE)
  bee.mdsplot <- ordiplot(bee.mds, type = "text")
  return(bee.mdsplot)
}