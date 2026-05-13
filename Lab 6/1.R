# a -> 6th person is 4th to believe
# b -> 3rd person is 1st to believe

p <- 0.8
a <- dnbinom(2, 4, p)
a
b <- dnbinom(2, 1, p)
b