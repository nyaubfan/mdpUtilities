#===============================================================================
#
# This function cleans the gameboard column naming
#
# MDP, CAS 1T16
#===============================================================================

clean_columns <- function(gmbrdData, targetIdx, targetNames){
  # targetIdx(int vector) = index of columns whose names will be changed to targetNames
  # targetNames(vector of strings) = new names for the columns at targetIdx
  #
  # function is dependent on `clean_cols` defined in cas_r_utilities.r that
  # goes through and applies a set of generic normalization to the column names
  
  colnames(gmbrdData) <- clean_cols(colnames(gmbrdData))
  if(length(targetIdx) > 0){colnames(gmbrdData)[targetIdx] <- targetNames}
  
  return(gmbrdData)
}