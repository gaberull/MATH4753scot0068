#' myread function from Lab 2
#'
#' Reads in csv and takes in data
#'
#' @param csv
#'
#' @return
#' @export
#'
#' @examples
myread=function(csv){
  fl=paste(dird,csv,sep="")
  read.table(fl,header=TRUE,sep=",")
}
