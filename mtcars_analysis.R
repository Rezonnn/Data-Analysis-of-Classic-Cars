# MTCars Performance Analysis Script
# This script mirrors the R Markdown analysis and saves plots to disk.

library(tidyverse)
library(broom)
library(GGally)

# Ensure plots directory exists
if (!dir.exists("plots")) dir.create("plots")

data(mtcars)

# Summary stats
print("Summary of mtcars:")
print(summary(mtcars))

# mpg vs hp
p1 <- mtcars %>%
  ggplot(aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Fuel efficiency vs horsepower",
    x = "Horsepower",
    y = "Miles per gallon"
  )
ggsave("plots/mpg_vs_hp.png", p1, width = 7, height = 4, dpi = 300)

# mpg vs wt
p2 <- mtcars %>%
  ggplot(aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Fuel efficiency vs vehicle weight",
    x = "Weight (1000 lbs)",
    y = "Miles per gallon"
  )
ggsave("plots/mpg_vs_wt.png", p2, width = 7, height = 4, dpi = 300)

# Correlation plot
p3 <- mtcars %>%
  select(mpg, cyl, disp, hp, wt, qsec) %>%
  ggpairs(title = "Correlation plot for selected variables")
ggsave("plots/corr_plot.png", p3, width = 7, height = 7, dpi = 300)

# Linear model
model <- lm(mpg ~ hp + wt, data = mtcars)
print("Linear model summary:")
print(summary(model))

# Model diagnostics
png("plots/model_diagnostics.png", width = 900, height = 900)
par(mfrow = c(2, 2))
plot(model)
par(mfrow = c(1, 1))
dev.off()

cat("\nAnalysis complete. Plots saved in the 'plots' directory.\n")
