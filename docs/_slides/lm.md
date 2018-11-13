---
---

## Linear Models

Regression of a "response" variable against discrete and continuous "predictors"
is fundamental to statistical data analysis. The `lm` function, which is an
abbreviation for "linear model", provides the simplest kind of regression in R.

===

Fitting a regression requires two inputs:

data
: {:.fragment} a `data.frame` with independent observations

model
: {:.fragment} a type of R expression called a `formula`

===

Specify a formula by naming a response variable left of a "~" and any number of
predictors to its right.



~~~r
> y ~ a
~~~
{:.input title="Console"}


~~~
y ~ a
~~~
{:.output}


===

## Formula mini-language

Writing formulas requires understanding a very simple syntax for including
predictors and specifying which ones interact.

===

A few simple examples of increasingly complicated formulas:

- `y ~ a` gives one predictor
- `y ~ a + b` gives two predictors
- `y ~ a:b` is only the interaction of `a` and `b`
- `y ~ a*b` gives all three predictors

===

## Fitting models

Match your formula variables to the column names of a data frame, and pass the
`formula` and `data.frame` as the first two arguments to `lm`, for "linear
model".

===



~~~r
fit <- lm(weight ~ hindfoot_length, animals)
~~~
{:.text-document title="{{ site.handouts[0] }}"}



~~~r
> summary(fit)
~~~
{:.input title="Console"}


===

## Factors in linear models

Data types matter in statistical modelling. For the predictors in a linear
model, the most important distinction is whether a variable is a factor.

===



~~~r
fit <- lm(weight ~ species_id, animals)
~~~
{:.text-document title="{{ site.handouts[0] }}"}



~~~r
> summary(fit)
~~~
{:.input title="Console"}


The difference between 1 and 24 degrees of freedom in the last two models—with
one predictor each—is due to `species_id` being a factor.
