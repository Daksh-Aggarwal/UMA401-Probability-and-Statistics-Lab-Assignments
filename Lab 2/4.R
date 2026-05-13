install.packages('qcc')
library(qcc)
defect <- c(18, 25, 10, 7, 5)
names(defect) <- c("Surface Defect", "Crack", "Misalignment", "Improper Finishing", "Other")
pareto.chart(defect, ylab = "Frequency", col = heat.colors(length(defect)), cumperc = seq (0 , 100 , by = 20), ylab2 = "Cumulative Percentage", main = "Pareto Chart")

max(defect)