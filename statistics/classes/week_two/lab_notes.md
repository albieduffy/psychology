### Data Wrangling

- **Goal**: Import, inspect, clean, and visualize data in R/RStudio.
- **Working directory & projects**: Use an RStudio Project per lab; keep `.Rproj`, `WHR2023.csv`, and your script in the same folder.
- **Scripts vs Console**: Put reproducible code in an `.R` script; use `#` for comments.

### Importing the WHR2023 data
```r
mydata <- read.csv("WHR2023.csv")
```
- After running, check Environment for `mydata` (observations × variables).
- Ladder score = Cantril ladder life evaluation (0–10), average of respondents.
- **Scale type**: Interval-like treated; strictly an ordered rating scale.

### Examining the dataset
Useful quick checks:
```r
head(mydata)
dim(mydata)
str(mydata)
names(mydata)
mydata$Country.name
```
- `chr` = character (text); `num` = numeric (numbers).
- Summary of all variables:
```r
summary(mydata)
```
- Ladder.score min/max: expect ≈ ~1.86 to ~7.80 in WHR2023.
- `Country.name` has no numeric summary because it is character data.
- Summary of one variable:
```r
summary(mydata$Ladder.score)
```

### Screening and simple visuals
Histogram (base R):
```r
hist(mydata$Ladder.score)
```
- Distribution: roughly unimodal, not perfectly normal; mild skew.

Labeled/colored histogram:
```r
hist(
  mydata$Ladder.score,
  main = "Histogram of Happiness Scores",
  xlab = "Happiness Scores",
  col = "blue"
)
```

Boxplot and outliers:
```r
boxplot(
  mydata$Ladder.score,
  main = "Boxplot of Happiness Scores",
  ylab = "Happiness Scores"
)
boxplot.stats(mydata$Ladder.score)$out  # outlier values
out <- boxplot.stats(mydata$Ladder.score)$out
out_ind <- which(mydata$Ladder.score %in% c(out))
out_ind
mydata$Country.name[out_ind]
```
- Expect the lowest outlier to correspond to Afghanistan (very low score).

Scatterplot (Happiness vs GDP per capita):
```r
plot(
  mydata$Ladder.score,
  mydata$Logged.GDP.per.capita,
  xlab = "Happiness",
  ylab = "GDP per capita"
)
```
- Relationship: general positive association with diminishing returns at higher scores.

