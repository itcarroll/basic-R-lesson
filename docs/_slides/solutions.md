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
-3.780e-01  3.780e-01  1.388e-17  3.780e-01 -3.780e-01 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)
(Intercept)  0.66524    2.29580   0.290    0.820
size        -0.09427    0.75599  -0.125    0.921
year.L       0.41747    1.03518   0.403    0.756
year.Q      -0.01387    1.50409  -0.009    0.994

Residual standard error: 0.756 on 1 degrees of freedom
Multiple R-squared:  0.2312,	Adjusted R-squared:  -2.075 
F-statistic: 0.1002 on 3 and 1 DF,  p-value: 0.9491
~~~
{:.output}

<aside class="notes" markdown="block">

[Return](#exercise-4)

</aside>
