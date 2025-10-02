install.packages("haven", "ggplot")
library(haven)

bes_study <- read_dta("bes_rps_2024_1.0.0.dta")

list <- c(1, 2, 3)

mean(list)
