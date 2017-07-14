---
---

## Distributions and Statistics

Since it is designed for statistics, R can easily draw random numbers from statistical distributions and calculate distribution values. 

===

To generate random numbers from a normal distribution, use the function `rnorm()`


~~~r
samp <- rnorm(n = 10)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
samp
~~~
{:.input}
~~~
 [1] -1.3112491  0.6181920  0.3567972 -0.6602221  1.6803084 -1.2819797
 [7] -0.1405303  0.1952731 -0.3485270  0.9041232
~~~
{:.output}

===

| Function  | Returns                                      | Notes                     |
|-----------+----------------------------------------------+---------------------------|
| `rnorm()` | Draw random numbers from normal distribution | Specify `n`, `mean`, `sd` |
| `dnorm()` | Probability density at a given number        |                           |
| `pnorm()` | Cumulative probability up to a given number  | left-tailed by default    |
| `qnorm()` | The quantile given a cumulative probability  | opposite of pnorm         |

===

Statistical distributions and their functions.
See *Table 14.1* in **R for Everyone** by Jared Lander for a full table.

| Distribution | Functions     |
|--------------+---------------|
| Normal       | *norm         |
| Binomial     | *binom        |
| Poisson      | *pois         |
| Gamma        | *gamma        |
| Exponential  | *exp          |
| Uniform      | *unif         |
| Logistic     | *logis        |

===

R has built in functions for handling many statistical tests. 


~~~r
x <- rnorm(n = 100, mean = 25, sd = 7)
y <- rbinom(n = 100, size = 50, prob = .85)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
t.test(x, y)
~~~
{:.input}
~~~

	Welch Two Sample t-test

data:  x and y
t = -22.833, df = 123.23, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -18.85954 -15.85057
sample estimates:
mean of x mean of y 
 25.23494  42.59000 
~~~
{:.output}

===

Linear regression with the `lm()` function uses a formula notation to specify relationships between variables (e.g. `y ~ x`).


~~~r
fit <- lm(y ~ x)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
summary(fit)
~~~
{:.input}
~~~

Call:
lm(formula = y ~ x)

Residuals:
    Min      1Q  Median      3Q     Max 
-6.3983 -1.6511 -0.4279  1.5188  6.3128 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 43.29875    0.93086  46.515   <2e-16 ***
x           -0.02809    0.03550  -0.791    0.431    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 2.532 on 98 degrees of freedom
Multiple R-squared:  0.006347,	Adjusted R-squared:  -0.003792 
F-statistic: 0.626 on 1 and 98 DF,  p-value: 0.4307
~~~
{:.output}

===

## Exercise 8

Recall the formula notation used to plot hindfoot_length against weight for the observations in the `animals` data frame: `plot(hindfoot_length ~ weight, data = animals)`. Instead of the `plot` function, use the `lm` function to estimate the coefficient of `log(weight)` as a predictor of `log(hindfoot_length)`.

[View solution](#solution-8)
{:.notes}
