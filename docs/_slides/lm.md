---
---

## Linear models

Regression of a "response" variable against discrete and continuous "predictors" is fundamental to statistical data analysis. The `lm` function, which is an abbreviation for "linear model", provides the simplest kind of regression in R.

===

Fitting a regression requires two inputs:

data
: {:.fragment} a `data.frame` with independent observations

model
: {:.fragment} a type of R expression called a `formula`

===

Specify a formula by naming a response variable left of a "~" and any number of predictors to its right.


~~~r
y ~ a
~~~
{:.input}
~~~
y ~ a
~~~
{:.output}

===

## Formula mini-language

Writing formulas requires understanding a very simple syntax for including predictors and specifying which ones interact.

===

Constant and one predictor:

- `y ~ a`
- `y ~ 1 + a`

===

No constant with one predictor:

- `y ~ -1 + a`
- `y ~ 0 + a`

===

Constant and two predictors:

- `y ~ a + b`
- `y ~ 1 + a + b`

===

Constant and one predictor as the "interaction" of two variables:

- `y ~ a:b`

===

Constant and the full complement of two variables with their interaction:

- `y ~ a*b`
- `y ~ 1 + a + b + a:b`

===

Constant and the full complement of `k` variables with up to $n^{th}$ order interactions:

- `y ~ (a_1 + a_2 + ... + a_k)^n`

===

## Fitting models

Match your formula variables to the column names of a data frame, and pass the `formula` and `data.frame` as the first two arguments to `lm`.

===


~~~r
animals <- read.csv('data/animals.csv')
fit <- lm(weight ~ hindfoot_length, animals)
~~~
{:.text-document title="{{ site.handouts }}"}

~~~r
summary(fit)
~~~
{:.input}

===

## Factors in linear models

Data structures matter in statistical modelling. For the predictors in a linear model, the most important distinction is whether a variable is a factor.

===


~~~r
fit <- lm(weight ~ species_id, animals)
~~~
{:.text-document title="{{ site.handouts }}"}

~~~r
summary(fit)
~~~
{:.input}

The difference between 1 and 24 degrees of freedom in the last two models—with one predictor each—is due to `species_id` being a factor.

===

## Exercise 5

Regress hindfoot_length against weight and species_id. Does it appear that the Chihuahuan Desert's common kangaroo rats (DM) have *inordinately* large feet for their weight?

