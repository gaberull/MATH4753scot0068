
#' readTable from Lab 3
#'
#' Reads in from a file chooser into a data frame called fin.df
#'
#' @return
#' @export
#'
#' @examples
readTable=function() {
fin.df=read.table(file.choose(),header=TRUE,sep=",")
}
