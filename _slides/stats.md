---
---

## Distributions and Statistics

Since it is designed for statistics, R can easily draw random numbers from statistical distributions and calculate distribution values. 

To generate random numbers from a normal distribution, use the function `rnorm()`


~~~r
ten_random_values <- rnorm(n = 10)
~~~
{:.input}

<!--split-->

| Function | Returns                                                      | Notes                     |
|----------+--------------------------------------------------------------+---------------------------|
| rnorm    | Draw random numbers from normal distribution                 | Specify `n`, `mean`, `sd` |
| pnorm    | Estimate probability of a specific number occuring           |                           |
| qnorm    | Cumulative probability that a given number or smaller occurs | left-tailed by default    |
| dnorm    | Returns quantile given a cumulative probability              | opposite of pnorm         |

<!--split-->

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

<!--split-->

R has built in functions for handling many statistical tests. 


~~~r
x <- rnorm(n = 100, mean = 25, sd = 7)
y <- rbinom(n = 100, size = 50, prob = .85)
~~~
{:.text-document title="lesson-2.R"}


~~~r
t.test(x, y)
~~~
{:.input}
~~~

	Welch Two Sample t-test

data:  x and y
t = -24.812, df = 125.1, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -19.41476 -16.54635
sample estimates:
mean of x mean of y 
 24.65944  42.64000 
~~~
{:.output}

<!--split-->

Linear regression with the `lm()` function uses a formula notation to specify relationships between variables (e.g. `y ~ x`).


~~~r
fit <- lm(y ~ x)
~~~
{:.text-document title="lesson-2.R"}


~~~r
summary(fit)
~~~
{:.input}
~~~

Call:
lm(formula = y ~ x)

Residuals:
    Min      1Q  Median      3Q     Max 
-6.9569 -1.5403  0.2465  2.0180  5.0906 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 43.79389    0.93845  46.666   <2e-16 ***
x           -0.04679    0.03670  -1.275    0.205    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 2.485 on 98 degrees of freedom
Multiple R-squared:  0.01632,	Adjusted R-squared:  0.006281 
F-statistic: 1.626 on 1 and 98 DF,  p-value: 0.2053
~~~
{:.output}

<!--split-->

## Exercise 4

Create a data frame from scratch that has three columns and 5 rows. In column "size" place a sequence from 1 to 5. For column "year", create a factor with three levels representing the past three years. In column `prop`, place 5 random samples from a uniform distribution. Show the summary of a linear model following the formula "prop ~ size + year".
