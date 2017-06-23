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
 [1]  0.7518293  1.0138131  0.6280393  0.7012288  0.9630408 -1.3947871
 [7] -0.4183569  2.2975311 -1.3028468 -0.0160964
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
t = -21.645, df = 117.93, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -18.46999 -15.37371
sample estimates:
mean of x mean of y 
 25.65815  42.58000 
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
-6.5829 -1.5782  0.4191  1.4225  5.4203 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 4.257e+01  8.381e-01  50.797   <2e-16 ***
x           2.944e-04  3.138e-02   0.009    0.993    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 2.331 on 98 degrees of freedom
Multiple R-squared:  8.985e-07,	Adjusted R-squared:  -0.0102 
F-statistic: 8.805e-05 on 1 and 98 DF,  p-value: 0.9925
~~~
{:.output}

===

## Exercise 8

Recall the formula notation used to plot hindfoot_length against weight for the observations in the `surveys` data frame: `plot(hindfoot_length ~ weight, data = surveys)`. Instead of the `plot` function, use the `lm` function to estimate the coefficient of `log(weight)` as a predictor of `log(hindfoot_length)`.
