x <- c(60, 62, 65, 71, 73, 76, 84, 82)
y <- c(37, 38, 41, 42, 45, 48, 52, 54)

plot(x, y)
model <- lm(y ~ x)
summary(model)
abline(model, col = "red")

# Prediction
newdata <- data.frame(x = 68)
pred <- predict(model, newdata = newdata)
pred

# Easier way
c <- coef(model);
c[1] + c[2] * 68;