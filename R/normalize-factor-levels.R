#===============================================================================
#
# This function normalizes factor levels from two different sources that should
# have the same level name, but actually slightly different due to different
# data protocols for the different systems.
#
# MDP, CAS 1T16
#===============================================================================

nrm_fctr_lvls <- function(tstNames, truNames){
  # initialize counter and data frame for fuzzy match indices
  # loop throught the test names match against the vector of
  # true values.
  k <- 1 
  idxOut <- data.frame(to_be_swapped = 0, to_swap = 0, threshold = 0)
  for(i in 1:length(tstNames)){ 
    tmpResult <- stringsim(tstNames[i], truNames, method = "lcs") 
    idx <- which(tmpResult > 0.5 & tmpResult < 1)
    if(length(idx)==1){ 
      # if the result of the match is length 1 then its fuzzy
      # match of interest.  > 1 then an exact match got tripped
      # up with a fuzzy match
      idxOut[k,] <- c(i,idx,tmpResult[idx]) # 
      k <- k + 1
    }
  }
  swapTerms <- data.frame(strings_to_be_swapped = tstNames[idxOut$to_be_swapped]
                          , strings_to_swap = truNames[idxOut$to_swap])
  return(cbind(idxOut, swapTerms) %>% arrange(desc(threshold)))
}


