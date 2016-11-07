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

===

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

===

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
{:.text-document title="lesson-2.R"}


~~~r
summary(fit)
~~~
{:.input}
~~~

Call:
lm(formula = prop ~ size + year, data = df)

Residuals:
         1          2          3          4          5 
-5.015e-03  5.015e-03  2.168e-19  5.015e-03 -5.015e-03 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)  
(Intercept)  0.81079    0.03046   26.62   0.0239 *
size        -0.13497    0.01003  -13.46   0.0472 *
year.L       0.42786    0.01373   31.15   0.0204 *
year.Q       0.66845    0.01996   33.50   0.0190 *
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 0.01003 on 1 degrees of freedom
Multiple R-squared:  0.9998,	Adjusted R-squared:  0.9992 
F-statistic:  1766 on 3 and 1 DF,  p-value: 0.01749
~~~
{:.output}

<aside class="notes" markdown="block">

[Return](#exercise-4)

</aside>

