x <- c(10, 20, 30, 40, 50, 60)
y <- c(15, 28, 41, 55, 68, 82)

cor(x, y)
plot(x, y)
model <- lm(y ~ x)
summary(model)
abline(model, col = "red")

# Prediction
newdata <- data.frame(x = 75)
pred <- predict(model, newdata = newdata)
pred

# Easier way
c <- coef(model);
c[1] + c[2] * 75;