---
# Use the liquid {% comment %} and {% endcomment %} tags for solutions
# to un-used exercises
---

## Exercise solutions

===

## Solution 1


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

## Solution 2


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

## Solution 3


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

## Solution 4


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
       1        2        3        4        5 
-0.02184  0.02184  0.00000  0.02184 -0.02184 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)  
(Intercept) -0.08759    0.13266  -0.660   0.6285  
size         0.17991    0.04368   4.119   0.1516  
year.L      -0.73225    0.05982 -12.242   0.0519 .
year.Q      -0.03270    0.08691  -0.376   0.7709  
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 0.04368 on 1 degrees of freedom
Multiple R-squared:  0.9961,	Adjusted R-squared:  0.9845 
F-statistic: 85.72 on 3 and 1 DF,  p-value: 0.07919
~~~
{:.output}

<aside class="notes" markdown="block">

[Return](#exercise-4)

</aside>

