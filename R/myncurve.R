#
#' myncurve
#'
#' display the curve, shaded area between the curve and x axis
#' from -∞ to x=a, and calculate the area (probability, P(X<=a))
#' which is released to the command-line in a list.
#'
#' @param mu
#' @param sigma
#' @param a
#'
#' @return probability - area under the curve
#' @export
#'
#' @examples
#' myncurve(2,4,5)
myncurve = function(mu, sigma, a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma), main="Area from -infinite to infinite", xlab = "Y", ylab = "Density")

  xcurve = seq(mu-3*sigma, a, length = 1000)
  ycurve = dnorm(xcurve, mean=mu, sd=sigma)
  polygon(c(mu-3*sigma, xcurve, a), c(0, ycurve, 0), col = "Purple")
  #Add text to calculate probability
  prob = pnorm(a, mu, sigma) - pnorm(mu-3*sigma, mu, sigma)
  prob = round(prob, 4)
  prob
}
