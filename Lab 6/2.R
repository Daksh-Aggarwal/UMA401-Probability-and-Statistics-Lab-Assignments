total <- 7
p <- 0.55
# win in 6th game
# 2 failures before 4th success
k <- 4
x <- 2
dnbinom(x, k, p)

# win the series
# <= 3 failures before 4th success
x <- 3
k <- 4
pnbinom(x, k ,p)

# 5 total, win 3
# <= 2 failures before 3rd success
p <- 0.55
x <- 2
k <- 3

pnbinom(x, k, p)