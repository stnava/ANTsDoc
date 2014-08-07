#!/usr/bin/env Rscript
#
# ants documentation in rmarkdown format
#
library(rmarkdown)
srcdir<-"./"
render( paste("antstalk.Rmd",sep='') , "all" ) 

