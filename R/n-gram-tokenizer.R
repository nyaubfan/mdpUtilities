#===============================================================================
#
# This function prototype is for use in text mining with the `tm` package.  It
# allows one to construct n-grams for use in the DTM rather than just single
# terms.
#
# MDP
#===============================================================================

n_gram_tokenizer <- function(x, n){
  v.out <- vector()
  for(i in 1:n){
    v.tmp <- unlist(lapply(ngrams(words(x), i), paste, collapse = " "), use.names = FALSE)
    v.out <- c(v.out,v.tmp)
    rm(v.tmp)
  }
  return(v.out)
}