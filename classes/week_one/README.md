### Section E. Coding in R and the Environment Tab

One aspect of using R that can feel daunting at first is writing code. The learning curve can be steeper than point‑and‑click software, but you gain a deeper and more flexible skillset. With a little practice, the basic jargon and ideas become second nature, and coding is a great transferable skill for postgraduate study and many careers.

For now, we will work directly in the R console (lower‑left pane in RStudio). A key concept is the use of objects (also called variables). Objects store the result of computations that you can reuse.

Naming rules for objects in R:
- contains only letters, numbers, full stops, and underscores
- starts with a letter or a full stop and a letter
- distinguishes uppercase and lowercase letters

For example, `mydata`, `X1`, and `y2` are all valid names. Note that `mydata` is different from `MyData`.

Assigning values to objects uses the assignment operator `<-` (you can think of it like `=`). The object name goes on the left, then `<-`, then the value or expression on the right.

Try the following in the console:

```r
x <- 5
```

R now stores the value 5 in an object called `x`. The console will not print anything immediately, but in the upper‑right pane (Environment tab), you should see an object `x` with value `5`. Now use it in a calculation:

```r
x * 2
```

You should see the result `10`.

You can assign more complex calculations to objects:

```r
myvariable <- 5 * 6 - 2
```

In the Environment tab, you should now see `myvariable` with value `28`.

Objects can be combined in further computations:

```r
calculation <- myvariable - x
print(calculation)
```

The value of `calculation` should be `23`. You can also see it in the Environment tab.

To remove a single object:

```r
rm(calculation)
```

To clear the Environment entirely, you can use the broom icon at the top of the Environment tab in RStudio.

### Section F. R Packages

Base R provides many built‑in functions and analyses, but R truly shines through packages, add‑ons that extend functionality. Because R is open source, anyone can contribute packages, and there are thousands available for a wide range of scientific tasks.

- Explore CRAN (Comprehensive R Archive Network): `https://cran.r-project.org/index.html`
- Browse Task Views (curated collections by topic): `https://cran.r-project.org/web/views/`
- Learn about the tidyverse (a collection of packages for data science): `https://www.tidyverse.org/`

Using a package involves two steps:
1) Install it once (downloads it to your machine)
2) Load it in each session when you want to use it

In RStudio, you can install packages via the Packages tab (lower‑right pane) → Install. Keep “Install dependencies” ticked. Alternatively, you can install from the console, e.g. `install.packages("psych")`.

After installation, load a package either by checking its box in the Packages tab or via the console with `library(psych)`. You must reload packages in each new R session.

Packages are updated periodically. Use the Update button in the Packages tab to keep them current. Note that core packages (including base) are loaded automatically when R starts.

If you are working on your own machine, try installing and loading the `psych` package and the `tidyverse` collection:

```r
# Install once
install.packages("psych")
install.packages("tidyverse")

# Load each session
library(psych)
library(tidyverse)
```
