a <- 7
b <- 10

punif(8.8, a, b) # 0.6
punif(9.5, a, b) - punif(7.4, a, b) # 0.7
1 - punif(8.5, a, b) # 0.5

hist(runif(100, a, b))

