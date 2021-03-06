#'
#' @title Jack-knife indices in n topologies m times.
#'
#' @description
#' The function calculates the indices values for a MultiData list  m (=replicates) times 
#'
#' @param MultiData
#' 
#' @param times
#'
#' @param jtip is the number of terminals, an integer.
#'
#' @param jtopol is the number of topologies, an integer.
#'
#' @returns the rankings
#'

Multi.Jack <- 
function (MultiData = MultiData, times = 100, jtip = 0, jtopol = 0) {
  
  results <- list() 
  
  for(i in 1:times){
    results[[i]] <- Rank.Indices(Multi.Index.Calc(MultiData = MultiData, 
                                 jtip = jtip, jtopol = jtopol))
  }
  
  return(results)
}
