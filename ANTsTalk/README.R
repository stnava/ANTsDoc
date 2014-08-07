#!/usr/bin/env Rscript
#
# ants documentation in rmarkdown format
#
library(ggplot2)
library(shiny)
library(ggvis)
library(rmarkdown)
srcdir<-"./"
render( paste("antstalk.Rmd",sep='') , "ioslides_presentation" ) 

