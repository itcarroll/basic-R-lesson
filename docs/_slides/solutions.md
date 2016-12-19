---
---

## Exercise solutions

===

### Solution 1


~~~r
species <- c()
count <- c()
data <- data.frame(species, count)
~~~
{:.text-document title="{{ site.handouts }}"}


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

===

### Solution 2


~~~r
sol2a <- days[c(-1, -7)]
sol2b <- days[seq(2, 7, 2)]
~~~
{:.text-document title="{{ site.handouts }}"}


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

===

### Solution 3


~~~r
sol3 <- df[2:3, 'ed']
~~~
{:.text-document title="{{ site.handouts }}"}


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

===

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
{:.text-document title="{{ site.handouts }}"}


~~~r
summary(fit)
~~~
{:.input}
~~~

Call:
lm(formula = prop ~ size + year, data = df)

Residuals:
         1          2          3          4          5 
-1.201e-01  1.201e-01  6.939e-18  1.201e-01 -1.201e-01 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)
(Intercept)  -1.2891     0.7297  -1.767    0.328
size          0.5579     0.2403   2.322    0.259
year.L       -0.1210     0.3290  -0.368    0.776
year.Q       -1.1171     0.4780  -2.337    0.257

Residual standard error: 0.2403 on 1 degrees of freedom
Multiple R-squared:  0.9131,	Adjusted R-squared:  0.6525 
F-statistic: 3.503 on 3 and 1 DF,  p-value: 0.3698
~~~
{:.output}

<aside class="notes" markdown="block">

[Return](#exercise-4)

</aside>

