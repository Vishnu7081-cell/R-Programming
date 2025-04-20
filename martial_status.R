# Chi-Squared Test for Goodness of Fit
library(tidyverse)
library(forcats)
View(gss_cat)  # For RStudio viewing

# Step 1: Filter the marital data
my_data <- gss_cat %>%
  select(marital) %>%
  filter(marital %in% c("Married", "Never married", "Divorced"))

# Step 2: Create frequency table
my_table <- table(my_data$marital)
View(my_table)

# Step 3: Run Chi-Squared Goodness of Fit Test
chisq.test(my_table)

# Step 4: Visualize using bar plot
my_data %>%
  ggplot(aes(marital)) +
  geom_bar(fill = "steelblue", color = "black") +
  labs(title = "Marital Status Distribution",
       x = "Marital Status",
       y = "Count")
