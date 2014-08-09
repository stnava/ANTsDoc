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
render( paste(pre,".Rmd",sep=''), clean=TRUE, "revealjs_presentation" ) 
# render( paste(pre,".Rmd",sep=''), clean=TRUE, "ioslides_presentation" ) 
# render( paste(pre,".Rmd",sep=''), clean=TRUE, "beamer_presentation" ) 

ss<-"Im interested in your brain alignment algorithms, and why you think
they are the best.  I'm also interested in whether your software
implementations will scale up to whole brain microscopy datasets, which
will be much larger than MRI datasets.

 highlighting and explaining the fundamental
computational problems will be important."
