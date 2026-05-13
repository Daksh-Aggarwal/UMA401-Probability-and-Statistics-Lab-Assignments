install.packages("pracma")
library(pracma)

k <- 1

f <- function(x, y) k * x * y

I <- integral2(f, xmin = 0, xmax = 1, ymin = 0, ymax = 2)
I$Q

gx <- function(x) integral(function(y) f(x, y), 0, 2)
gx
hy <- function(y) integral(function(x) f(x, y), 0, 1)
hy

gx_fun <- function(x) 2 * x
gx_fun
hy_fun <- function(y) y / 2
hy_fun

E_x <- integral(function(x) x * gx_fun(x), 0, 1)
E_x
E_y <- integral(function(y) y * hy_fun(y), 0, 2)
E_y

E_x2 <- integral(function(x) x^2 * gx_fun(x), 0, 1)
E_x2
E_y2 <- integral(function(y) y^2 * hy_fun(y), 0, 2)
E_y2

var_x <- E_x2 - E_x^2
var_x
var_y <- E_y2 - E_y^2
var_y

E_xy <- integral2(function(x, y) x * y * f(x, y), 0, 1, 0, 2)$Q
E_xy
cov <- E_xy - E_x * E_y
cov

p_xy <- integral2(f, 0.5, 1, 1, 2)
p_xy$Q