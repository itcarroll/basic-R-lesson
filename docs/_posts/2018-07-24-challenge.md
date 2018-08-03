---
layout: default
style: /css/static.css
---

### Lesson Exercises

Complete the exercises from today's two lessons:

1. [Base R Exercises]({{ site.gh-pages }}/basic-R-lesson/course/#/slides/exercise)
1. [Visualizing Tabular Data Exercises]({{ site.gh-pages }}/graphics-with-ggplot2-lesson/course/#/slides/exercise)

### Challenge Exercises

Work through as many of the following challenge exercises as you can in the
remaining time. Take a few minutes to ponder each challenge on your own,
but feel free to engage with fellow participants and SESYNC instructors for
guidance or ideas.

#### Challenge 1

Fix each of the following common data frame subsetting errors. The `plots` variable
can be read in with `read.csv('data/plots.csv')`.

- Fix `plots[plots$id = 4, ]` so it returns the rows with column `id` equal to 4.
- Fix `plots[-1:4, ]` so it returns all rows but the first four.
- Fix `plots[plots$id <= 5]` so it returns the rows with column `id` less than or equal to 5.
- Fix `plots[plots$id == 4 | 6, ]` so it returns the rows with column `id` equal to 4 or 6.

#### Challenge 2

Were you to ever interview for a "data scientist" postition, you may be asked to
complete this common challenge (possibly using multiple approaches). Write a
"for loop" in the R language that calculates the Fibonnacci sequence up through
it's 12th entry. Start your script with the line `fib <- c(1, 1)`, and recall
that `c` combines vectors.

#### Challenge 3

Create a data frame from scratch that will have three columns and 40 rows as
follows. In a column named "id", put a repeating sequence from 1 to 10. For a
column named "group", create a factor from an alternating seqence of 10 `a`s
followed by 10 `b`s (hint: `?seq`). In a colume named "var" put 40 random
samples from a uniform distribution (hint: `?runif`) in order from smallest to
largest (hint: `?sort`). Plot the data with a smooth line showing the
relationship between the increasing `id` and `var` with different colors for
each group.

#### Challenge 4

Try that Fibonnacci challenge again, but use an approach called "recursion".
That is, write a function that calls itself (i.e. a recursion) to calculate any
Fibonacci number. Just because this is an "advanced" approach doesn't mean it's
a good one: don't try it for any number over your age!

### Solutions

#### Solution 1

- `plots[plots$id == 4, ]`
- `plots[-(1:4), ]` or `plots[-1:-4, ]` 
- `plots[plots$id <= 5, ]`
- `plots[plots$id == 4 | plots$id == 6, ]`

#### Solution 2

```r
fib <- c(1, 1)
for (i in 3:12) {
  fib[i] <- fib[i - 1] + fib[i - 2]
}
```
{:.text-document .no-eval title='exercise.R' }

#### Solution 3

```r
df <- data.frame(
  id = 1:10,
  group = rep(c('a', 'b'), each = 10),
  prob = sort(runif(40)))
ggplot(df, aes(x = id, y = prob, color = group)) +
  geom_point() +
  geom_smooth(method = 'lm')

```
{:.text-document .no-eval title='exercise.R' }

#### Solution 4

```r
fibn <- function(n) {
 if (n <= 2) {
   fib <- 1
 } else if (n > 2) {
   fib <- fibn(n - 1) + fibn(n - 2)
 }
 return(fib)
}
fibn(12)
```
{:.text-document .no-eval title='exercise.R' }

Note that this recursive solution is very inefficient, but could be greatly
improved with [memoization](https://en.wikipedia.org/wiki/Memoization).
