mean <- 1
sd <- 1
k <- 1.25

mean_y1 <- mean + log(k)
sd_y1 <- sd

1 - plnorm(1, mean_y1, sd_y1)

qlnorm(0.4, mean_y1, sd_y1)
qlnorm(0.8, mean_y1, sd_y1)