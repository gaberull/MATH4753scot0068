
#' mybin - Binomial Simulation
#'
#' Uses sample function to produce a binomial simulation over iter number of trials.
#' Fills a matrix and creates a labeled barplot for given input.
#'
#' @param iter - number of iterations
#' @param n - sample size (number of trials)
#' @param p - probability of a success
#'
#' @return plot of the simulation with proportions and a table of proportions
#' @export
#'
#' @examples
#' mybin(iter=100,n=10, p=0.5)
mybin=function(iter, n, p){
  # make a matrix to hold the samples
  #initially filled with NA's
  sam.mat=matrix(NA,nr=n,nc=iter, byrow=TRUE)
  # gonna be filled up with NA's
  #Make a vector to hold the number of successes in each trial
  succ=c()
  for( i in 1:iter){
    #Fill each column with a new sample
    sam.mat[,i]=sample(c(1,0),n,replace=TRUE, prob=c(p,1-p))
    #Calculate a statistic from the sample (this case it is the sum)
    succ[i]=sum(sam.mat[,i])
  }

  # adds up a column
  #Make a table of successes
  succ.tab=table(factor(succ,levels=0:n))

  # Make a barolot of the proportions
  iter.lab=paste0("iter = ", iter)
  n.lab=paste0("n = ",n)
  p.lab=paste0("p = ", p)
  lab = paste(iter.lab,n.lab,p.lab, sep=", ")
  barplot(succ.tab / (iter), col=rainbow(n+1), main = "Binomial Experiment", sub=lab, xlab="Number of successes")
  succ.tab/iter
}
