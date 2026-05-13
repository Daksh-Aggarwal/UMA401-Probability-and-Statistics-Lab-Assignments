mean <- 60
sd <- 10

pnorm(90, mean, sd) - pnorm(80, mean, sd)
1 - pnorm(90, mean, sd)

qnorm(0.25, mean, sd)
qnorm(0.50, mean, sd)

hist(rnorm(100, mean, sd))