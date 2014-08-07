#!/usr/bin/env Rscript
#
# ants documentation in rmarkdown format
#
library(ggplot2)
library(shiny)
library(ggvis)
library(rmarkdown)
srcdir<-"./"
pre='antstalk'
# render( paste(pre,".Rmd",sep=''), clean=TRUE, "revealjs_presentation" ) 
render( paste(pre,".Rmd",sep=''), clean=TRUE, "ioslides_presentation" ) 

