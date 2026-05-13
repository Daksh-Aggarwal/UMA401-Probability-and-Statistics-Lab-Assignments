# a -> fires 7 times, prob of hitting a target at least twice
# b -> how many times must he first so that the prob of hitting is greater than 2/3
p <- 1/4
a <- 1 - pbinom(1, 7, p)
a

q <- 1 - p
n <- 1
x <- 0

while((1 - pbinom(x, n, p)) <= 2/3){
  n <- n + 1
  }
n