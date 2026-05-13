y <- function(x) {
  ifelse(x < 0, x^2, x)
}

for(x in -5: 5) {
  print(y(x))
  # Use lists to store all function values
  # Can un-list then
}

x <- seq(-5, 5)
plot(x, y(x), "l")
