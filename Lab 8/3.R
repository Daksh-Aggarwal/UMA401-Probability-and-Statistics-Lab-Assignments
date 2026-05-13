install.packages("VGAM")
library(VGAM)

mu = 0
b = 1.5

#a
plaplace(-2, mu, b) + 1 - plaplace(1, mu, b)

#b
plaplace(1, mu, b) - plaplace(-1, mu, b)

#c
hist(rlaplace(300, mu, b))

