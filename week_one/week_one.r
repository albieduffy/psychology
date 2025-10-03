## Week One: Coding in R, Environment Tab, and Packages
## ---------------------------------------------------
## This script mirrors the step-by-step instructions from the lab notes.
## Run lines one at a time in the console (Ctrl/Cmd+Enter in RStudio).

## Section E: Objects, assignment, Environment tab

## Create an object named x and assign it the value 5 using the assignment operator <-
x <- 5  # After running, check the Environment tab (upper right) for x = 5

## Use x in a simple calculation; the console should print 10
x * 2

## Create a new object from a more complex calculation
myvariable <- 5 * 6 - 2  # Expected value is 28; see Environment tab

## Combine objects in a new computation
calculation <- myvariable - x  # 28 - 5 = 23

## Print the value of calculation explicitly
print(calculation)  # Should print 23

## Remove a single object from the Environment
rm(calculation)  # calculation disappears from the Environment tab

## Tip: Use the broom icon in the Environment tab to clear all objects


## Section F: Packages — install and load

## Install packages (only needed once per machine). Commented to avoid re-installing every run.
## Uncomment the next lines if you have not installed these yet.
# install.packages("psych")
# install.packages("tidyverse")
# install.packages("haven")

## Load packages for the current session (needed each time you start R/RStudio)
library(psych)
library(tidyverse)  # loads ggplot2, dplyr, tidyr, readr, purrr, tibble, stringr, forcats

## Quick check: create a small numeric vector and compute its mean
numbers <- c(1, 2, 3)
mean(numbers)  # Should return 2
