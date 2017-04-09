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
 6.578e-03 -6.578e-03  4.337e-19 -6.578e-03  6.578e-03 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)  
(Intercept)  1.30603    0.03995   32.69   0.0195 *
size        -0.18442    0.01316  -14.02   0.0453 *
year.L       0.31977    0.01801   17.75   0.0358 *
year.Q       0.23529    0.02617    8.99   0.0705 .
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 0.01316 on 1 degrees of freedom
Multiple R-squared:  0.9974,	Adjusted R-squared:  0.9895 
F-statistic: 127.1 on 3 and 1 DF,  p-value: 0.0651
~~~
{:.output}

<aside class="notes" markdown="block">

[Return](#exercise-4)

</aside>

