---
---

## Distributions and Statistics

Since it was designed by statisticians, R can easily draw random numbers from
probability distributions and calculate probabilities.

===

To generate random numbers from a normal distribution, use the function
`rnorm()`



~~~r
rnorm(n = 10)
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .text-document}


~~~
 [1] -0.2370723 -1.4292213  0.8261260  1.6549967  0.7993259  1.0656807
 [7] -0.3397285 -0.2609470 -0.2047979 -0.1227364
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
x <- rnorm(n = 100, mean = 15, sd = 7)
y <- rbinom(n = 100, size = 20, prob = .85)
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .text-document}


===

The samples above are drawn from different distributions with different means.
The  T-Test should easilly distinguish them, although it does not check
assumptions!



~~~r
> t.test(x, y)
~~~
{:title="Console" .input}


~~~

	Welch Two Sample t-test

data:  x and y
t = -3.0895, df = 107.92, p-value = 0.00255
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -3.3562439 -0.7327582
sample estimates:
mean of x mean of y 
  15.2155   17.2600 
~~~
{:.output}


===

Shapiro's test of normality provides one routine for verifying assumptions.



~~~r
> shapiro.test(y)
~~~
{:title="Console" .input}


~~~

	Shapiro-Wilk normality test

data:  y
W = 0.94755, p-value = 0.0005739
~~~
{:.output}

