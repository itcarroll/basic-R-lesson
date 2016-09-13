---
---

## Exercise solutions

<!--split-->

### Solution 1


~~~r
species <- c()
count <- c()
data <- data.frame(species, count)
~~~
{:.text-document title="lesson-2.R"}


~~~r
str(data)
~~~
{:.input}
~~~
'data.frame':	0 obs. of  0 variables
~~~
{:.output}

<aside class="notes" markdown="block">

[Return](#exercise-1)

</aside>

<!--split-->

### Solution 2


~~~r
sol2a <- days[c(-1, -7)]
sol2b <- days[seq(2, 7, 2)]
~~~
{:.text-document title="lesson-2.R"}


~~~r
sol2a
~~~
{:.input}
~~~
[1] "Monday"    "Tuesday"   "Wednesday" "Thursday"  "Friday"   
~~~
{:.output}


~~~r
sol2b
~~~
{:.input}
~~~
[1] "Monday"    "Wednesday" "Friday"   
~~~
{:.output}

<aside class="notes" markdown="block">

[Return](#exercise-2)

</aside>

<!--split-->

### Solution 3


~~~r
sol3 <- df[2:3, 'ed']
~~~
{:.text-document title="lesson-2.R"}


~~~r
sol3
~~~
{:.input}
~~~
[1] highschool college   
Levels: middle < highschool < college
~~~
{:.output}

<aside class="notes" markdown="block">

[Return](#exercise-3)

</aside>

<!--split-->

### Solution 4


~~~r
df <- data.frame(
    size = 1:5,
    year = factor(
        c(2014, 2014, 2013, 2015, 2015),
	levels = c(2013, 2014, 2015),
	ordered = TRUE),
    prop = runif(n = 5))
fit <- lm(prop ~ size + year, data = df)
~~~
{:.text-document title="lesson-2.R"}


~~~r
summary(fit)
~~~
{:.input}
~~~

Call:
lm(formula = prop ~ size + year, data = df)

Residuals:
      1       2       3       4       5 
 0.1047 -0.1047  0.0000 -0.1047  0.1047 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)
(Intercept)  -1.0664     0.6357  -1.678    0.342
size          0.4801     0.2093   2.294    0.262
year.L       -0.3893     0.2866  -1.358    0.404
year.Q       -0.9417     0.4165  -2.261    0.265

Residual standard error: 0.2093 on 1 degrees of freedom
Multiple R-squared:  0.8519,	Adjusted R-squared:  0.4077 
F-statistic: 1.918 on 3 and 1 DF,  p-value: 0.4776
~~~
{:.output}

<aside class="notes" markdown="block">

[Return](#exercise-4)

</aside>

