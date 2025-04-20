library(tidyverse)
library(palmerpenguins)

View(penguins)

ggplot(data = penguins, aes(x = flipper_length_mm)) +
  geom_histogram(binwidth = 10, fill = "blue", col = "black") +
  facet_wrap(~species, ncol = 1) +
  labs(
    title = "Distribution of Flipper Lengths by Species",
    x = "Species",
    y = "Flipper Length (mm)"
  )
