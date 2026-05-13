pdf = function(n, p, x) {
  choose(n, x)*(p^x)*((1-p)^(n-x))
}
expec <- function(n, p, r) {
  pdf_times_xr <- function(x) x^r * pdf(n, p, x)
  xs <- 0:n
  sum(pdf_times_xr(xs))
}

mean = expec(30, 0.4, 1)
variance = expec(30, 0.4, 2) - (mean^2)
mean
variance