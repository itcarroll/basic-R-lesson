---
# Use the liquid {% comment %} and {% endcomment %} tags for solutions
# to un-used exercises
---

## Exercise solutions

===

## Solution 1

The first solution:


~~~r
(-0.3 + sqrt(0.3 ^ 2 - 4 * 1.5 * -2.9)) / (2 * 1.5)
~~~

~~~
[1] 1.294035
~~~
{:.text-document title="{{ site.handouts }}"}

The second solution:


~~~r
(-0.3 - sqrt(0.3 ^ 2 - 4 * 1.5 * -2.9)) / (2 * 1.5)
~~~

~~~
[1] -1.494035
~~~
{:.text-document title="{{ site.handouts }}"}

===

## Solution 2


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

## Solution 3


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

## Solution 4


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

## Solution 5


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
 1.555e-01 -1.555e-01 -6.939e-18 -1.555e-01  1.555e-01 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)
(Intercept)  -0.6202     0.9442  -0.657    0.630
size          0.3895     0.3109   1.253    0.429
year.L       -0.7258     0.4257  -1.705    0.338
year.Q       -0.1614     0.6186  -0.261    0.838

Residual standard error: 0.3109 on 1 degrees of freedom
Multiple R-squared:  0.8818,	Adjusted R-squared:  0.5274 
F-statistic: 2.488 on 3 and 1 DF,  p-value: 0.4289
~~~
{:.output}

<aside class="notes" markdown="block">

[Return](#exercise-4)

</aside>
