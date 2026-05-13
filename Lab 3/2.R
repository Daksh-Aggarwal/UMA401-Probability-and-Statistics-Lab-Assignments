y <- function(x, sig, mu) {
  (1/(sqrt(2*pi)*sig)) * exp(-((x - mu)^2)/(2*(sig^2)))
}
x <- seq(-4, 4, 0.0001)
plot(x, y(x, 1, 0))
lines(x, y(x, 2, 0))