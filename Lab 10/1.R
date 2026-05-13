lambda = 4;
n = 50;
p <- rpois(n, lambda)

theo_mean <- lambda;
theo_mean
emp_mean <- mean(p);
emp_mean

set.seed(0)
n = 50
samples = 1000

sample_means = replicate(samples, mean(rpois(n, 4)))
mean(sample_means)
var(sample_means)
hist(sample_means)