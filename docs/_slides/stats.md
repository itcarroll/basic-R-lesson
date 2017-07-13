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
 [1]  0.8363729 -0.3765354  0.1219806  0.3843239 -2.0472276  0.1509189
 [7] -0.3434567  0.4794906  1.4788799 -0.4282980
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
t = -23.848, df = 119.14, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -19.77695 -16.74465
sample estimates:
mean of x mean of y 
  24.3792   42.6400 
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
-6.5678 -1.5387  0.1796  1.4087  4.5568 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 42.14813    0.82216  51.265   <2e-16 ***
x            0.02018    0.03232   0.624    0.534    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 2.345 on 98 degrees of freedom
Multiple R-squared:  0.00396,	Adjusted R-squared:  -0.006204 
F-statistic: 0.3896 on 1 and 98 DF,  p-value: 0.5339
~~~
{:.output}

===

## Exercise 8

Recall the formula notation used to plot hindfoot_length against weight for the observations in the `surveys` data frame: `plot(hindfoot_length ~ weight, data = surveys)`. Instead of the `plot` function, use the `lm` function to estimate the coefficient of `log(weight)` as a predictor of `log(hindfoot_length)`.

[View solution](#solution-8)
{:.notes}
