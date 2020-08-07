#' Create a now project directory
#'
#' @param path Absolute or relative project path. If the directory does not exist, it will be created.
#' Spaces will be replaced by a graceful underscore `_` in the files names.
#' Note that it is a (very) good practice to have no white space or weird characters in your project name
#' @param ref A boolean. if `TRUE`, a References folder will be created to hold the literature related to your project
#' @return A beautifully organised project folder
#' @export
#'
#' @examples
#' \dontrun{
#' make_project("kickassAnalysis")
#' }
make_project <- function(path, ref=TRUE){
  
  if(!dir.exists(path)) dir.create(path)
  setwd(path)
  pathf <- getwd()
  
  nameMain <- paste(gsub("[[:space:]]","_",basename(path)),"_MainScript.R", sep="")
  nameDoc <- paste("Docs/",gsub("[[:space:]]","_",basename(path)),"_docs.Rmd", sep="")
  configFile <- paste(basename(path),".config", sep="")
  
  dir.create("Data")
  dir.create("Sources")
  dir.create("Figures")
  dir.create("Docs")
  dir.create("Gist")
  if(ref) {
    dir.create("References")
  }
  
  file.create(nameMain)
  file.create(nameDoc)
  file.create(configFile)
  

  
  sink(nameMain)
  cat("
# Clean up ----------------------------------------------------------------
rm(list = ls())

# Load Packages and Sources -----------------------------------------------


# Load Data ---------------------------------------------------------------
")
  cat(paste("setwd('", pathf, "')\n", sep=""))

cat("# Clean -------------------------------------------------------------------


# Start working -----------------------------------------------------------


# DEBUG ZONE --------------------------------------------------------------
# Here you can experiment some codes.
# Clean this section when your satisfied with your code

# END DEBUG ZONE ----------------------------------------------------------
")
  sink() 

  sink(nameDoc)
  cat(paste("---
title: ","\"Working notes for ",basename(path)," project\"
author:
 - First Name, Last Name
output: pdf_document
fontsize: 12pt
---
   
# My first Idea
what it is
", sep=""))
  sink()
  
}


