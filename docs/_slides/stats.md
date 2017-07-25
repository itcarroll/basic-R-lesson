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
 [1] -0.78113282 -0.06103047 -1.15900799  0.26156262  0.46521782
 [6] -0.15671861  0.68824774 -1.26014231  1.05630340  2.86988207
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
t = -22.664, df = 117.39, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -19.54175 -16.40111
sample estimates:
mean of x mean of y 
 24.39857  42.37000 
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
-5.3884 -1.3721 -0.3561  1.6289  5.6395 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 42.418347   0.789681  53.716   <2e-16 ***
x           -0.001982   0.030921  -0.064    0.949    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 2.333 on 98 degrees of freedom
Multiple R-squared:  4.19e-05,	Adjusted R-squared:  -0.01016 
F-statistic: 0.004107 on 1 and 98 DF,  p-value: 0.949
~~~
{:.output}

===

## Exercise 8

Recall the formula notation used to plot hindfoot_length against weight for the observations in the `animals` data frame: `plot(hindfoot_length ~ weight, data = animals)`. Instead of the `plot` function, use the `lm` function to estimate the coefficient of `log(weight)` as a predictor of `log(hindfoot_length)`.

[View solution](#solution-8)
{:.notes}
