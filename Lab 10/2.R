lambda = 1.5;
n1 = 10;
n2 = 50;

exp1 = replicate(100, mean(rexp(n1, lambda)))
exp2 = replicate(100, mean(rexp(n2, lambda)))

hist(e1, col = "red")
hist(e2, col = "blue")