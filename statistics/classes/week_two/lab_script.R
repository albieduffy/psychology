# My first R script

## Read World Happiness Report data from CSV file
mydata <- read.csv("WHR2023.csv")

## Quick inspection helpers
head(mydata)
dim(mydata)
str(mydata)

## Print WHR data to the console (truncated in View or head is usually better)
print(mydata)

## Print column names from WHR to the console
names(mydata)

## Display country name values
mydata$Country.name

## Summary of all variables
summary(mydata)

## Isolate the Ladder.score column and return a summary
summary(mydata$Ladder.score)

## Summary of Country.name (character, so counts not numeric stats)
summary(mydata$Country.name)

## Plot a histogram of the Ladder.score column
hist(
  mydata$Ladder.score,
  main = "Histogram of Happiness Scores",
  xlab = "Happiness Scores",
  col = "blue"
)

## Plot a boxplot of Happiness scores
boxplot(
  mydata$Ladder.score,
  main = "Boxplot of Happiness Scores",
  ylab = "Happiness Scores",
  col = "lightgray"
)

## Identify the outlier(s) from the boxplot and their row indices
out <- boxplot.stats(mydata$Ladder.score)$out
out
out_ind <- which(mydata$Ladder.score %in% c(out))
out_ind
mydata$Country.name[out_ind]

## Plot a scatter plot of Happiness against Logged GDP per capita
plot(
  mydata$Ladder.score,
  mydata$Logged.GDP.per.capita,
  xlab = "Happiness",
  ylab = "GDP per capita"
)
