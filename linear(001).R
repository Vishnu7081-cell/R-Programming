# Step 1: Corrected equal-length vectors
height <- c(180, 175, 164, 178, 155, 190)
weight<- c(90, 68, 55, 60, 70, 96)

# Step 2: Build the regression model
relation <- lm(weight ~ height)

# Step 3: Predict weight for height = 180
predict(relation, data.frame(height=180))
