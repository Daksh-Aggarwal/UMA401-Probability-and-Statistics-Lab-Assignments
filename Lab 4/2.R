pdf = function(x, mu, sigma) {
  1/(sigma*sqrt(2*pi))*exp((-1/2)*((x - mu) / sigma)^2)
}
expec <- function(mu, sigma, r) {
  pdf_times_xr <- function(x) x^r * pdf(x, mu, sigma)
  expec = integrate(pdf_times_xr, 0, Inf)$value
  expec
}

first_moment = expec(12, 4, 1)
second_moment = expec(12, 4, 2)
third_moment = expec(12, 4, 3)
first_moment
second_moment
third_moment