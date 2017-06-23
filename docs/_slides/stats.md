---
---

## Distributions and Statistics

Since it is designed for statistics, R can easily draw random numbers from statistical distributions and calculate distribution values. 

To generate random numbers from a normal distribution, use the function `rnorm()`


~~~r
ten_random_values <- rnorm(n = 10)
~~~
{:.input}

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

| Distribution | Random Number |
|--------------+---------------|
| Normal       | rnorm         |
| Binomial     | rbinom        |
| Poisson      | rpois         |
| Gamma        | rgamma        |
| Exponential  | rexp          |
| Uniform      | runif         |
| Logistic     | rlogis        |

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
t = -24.618, df = 131, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -19.39868 -16.51293
sample estimates:
mean of x mean of y 
  24.7142   42.6700 
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
-7.4921 -1.6589  0.2412  2.2539  5.3770 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 42.13086    1.05284  40.017   <2e-16 ***
x            0.02181    0.04111   0.531    0.597    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 2.763 on 98 degrees of freedom
Multiple R-squared:  0.002865,	Adjusted R-squared:  -0.007309 
F-statistic: 0.2816 on 1 and 98 DF,  p-value: 0.5968
~~~
{:.output}

===

## Exercise 6

Create a data frame from scratch that has three columns and 5 rows. In column "size" place a sequence from 1 to 5. For column "year", create a factor with three levels representing the past three years. In column "prop", place 5 random samples from a uniform distribution. Show the summary of a linear model following the formula "prop ~ size + year".
