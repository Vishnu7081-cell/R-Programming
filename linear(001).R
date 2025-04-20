height <- c(180, 175, 164, 178, 155, 190)
weight<- c(90, 68, 55, 60, 70, 96)

relation <- lm(weight ~ height)

predict(relation, data.frame(height=180))
