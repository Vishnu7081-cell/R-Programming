# Load required libraries
library(tidyverse)  
library(forcats)    
library(ggplot2)    

View(gss_cat)

# -------------------------------------------
# Race
# Filter the dataset to include only specific race categories and drop unused factor levels
my_data <- gss_cat %>%
  select(race) %>%  
  filter(race %in% c("White", "Black", "Other")) %>%  
  mutate(race = fct_drop(race))  

# Create a frequency table of the filtered race categories
my_table <- table(my_data$race)
View(my_table)

# Perform a chi-square test on the frequency table
chisq.test(my_table)

# Create a bar chart to visualize race category counts
my_data %>%
  ggplot(aes(race)) + 
  geom_bar()

# -------------------------------------------
# Marital Status
# Filter the dataset to include specific marital statuses and drop unused levels
my_data <- gss_cat %>%
  select(marital) %>%
  filter(marital %in% c("Never married", "Divorced", "Widowed")) %>%
  mutate(marital = fct_drop(marital))

# Create a frequency table of the filtered marital statuses
my_table <- table(my_data$marital)
View(my_table)

# Perform a chi-square test on the frequency table
chisq.test(my_table)

# Create a bar chart to visualize marital status counts
my_data %>%
  ggplot(aes(marital)) + 
  geom_bar() +
  labs(title = "Marital Status Distribution", x = "Marital Status", y = "Count")

# -------------------------------------------
# Religious Distribution
# Filter the dataset to include only specific religions and drop unused factor levels
my_data <- gss_cat %>%
  select(relig) %>%  
  filter(relig %in% c("Catholic", "Protestant", "Jewish", "Orthodox-christian")) %>%  
  mutate(relig = fct_drop(relig))  

# Create a frequency table of the filtered religion categories
my_table <- table(my_data$relig)
View(my_table)

# Perform a chi-square test on the frequency table
chisq.test(my_table)

# Create a bar chart to visualize religion category counts
my_data %>%
  ggplot(aes(relig)) + 
  geom_bar()

# -------------------------------------------
# Income Distribution
# Filter the dataset to include specific income ranges and drop unused levels
my_data <- gss_cat %>%
  select(rincome) %>%
  filter(rincome %in% c("$8000 to 9999", "$20000 - 24999", "$25000 or more", "$7000 to 7999")) %>%
  mutate(rincome = fct_drop(rincome))

# Create a frequency table of the filtered income groups
my_table <- table(my_data$rincome)
View(my_table)

# Perform a chi-square test on the frequency table
chisq.test(my_table)

# Create a bar chart to visualize income distribution
my_data %>%
  ggplot(aes(rincome)) + 
  geom_bar() +
  labs(title = "Income Distribution", x = "Income", y = "Count")
