---
---

## Exercise solutions

===

## Solution 1

First solution:


~~~r
x <- (-0.3 + sqrt(0.3 ^ 2 - 4 * 1.5 * -2.9)) / (2 * 1.5)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
1.5 * x^2 + 0.3 * x - 2.9
~~~
{:.input}
~~~
[1] -8.881784e-16
~~~
{:.output}

Second solution:


~~~r
x <- (-0.3 - sqrt(0.3 ^ 2 - 4 * 1.5 * -2.9)) / (2 * 1.5)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
1.5 * x^2 + 0.3 * x - 2.9
~~~
{:.input}
~~~
[1] -4.440892e-16
~~~
{:.output}

<aside class="notes" markdown="block">
[Return](#exercise-1)
</aside>

===

## Solution 2


~~~r
x <- list(1, list(2, 3))
y <- c(1, list(2, 3))
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
str(x)
~~~
{:.input}
~~~
List of 2
 $ : num 1
 $ :List of 2
  ..$ : num 2
  ..$ : num 3
~~~
{:.output}

~~~r
str(y)
~~~
{:.input}
~~~
List of 3
 $ : num 1
 $ : num 2
 $ : num 3
~~~
{:.output}

The variable `x` contains two elements, a number and a list. The variable `y` has concatenation of the two arguments, coerced to the more flexible of the two (a list is more flexible than a number). Both `x` and `y` are lists.

<aside class="notes" markdown="block">
[Return](#exercise-2)
</aside>

===

## Solution 3


~~~r
species <- c()
abund <- c()
data <- data.frame(species, abund)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
str(data)
~~~
{:.input}
~~~
'data.frame':	0 obs. of  0 variables
~~~
{:.output}

<aside class="notes" markdown="block">
[Return](#exercise-3)
</aside>

===

## Solution 4


~~~r
surveys <- read.csv('data/surveys.csv', stringsAsFactors = FALSE, na.strings = '')
~~~

~~~
Warning in file(file, "rt"): cannot open file 'data/surveys.csv': No such
file or directory
~~~

~~~
Error in file(file, "rt"): cannot open the connection
~~~

~~~r
surveys$sex <- factor(surveys$sex)
~~~

~~~
Error in factor(surveys$sex): object 'surveys' not found
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
str(surveys)
~~~
{:.input}
~~~
Error in str(surveys): object 'surveys' not found
~~~
{:.output}

<aside class="notes" markdown="block">
[Return](#exercise-4)
</aside>

===

## Solution 5


~~~r
sol5a <- days[c(-1, -7)]
sol5b <- days[seq(2, 7, 2)]
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
sol5a
~~~
{:.input}
~~~
[1] "Monday"    "Tuesday"   "Wednesday" "Thursday"  "Friday"   
~~~
{:.output}


~~~r
sol5b
~~~
{:.input}
~~~
[1] "Monday"    "Wednesday" "Friday"   
~~~
{:.output}

<aside class="notes" markdown="block">
[Return](#exercise-5)
</aside>

===

## Solution 6


~~~r
sol6 <- df[2:3, 'ed']
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
sol6
~~~
{:.input}
~~~
[1] highschool college   
Levels: middle < highschool < college
~~~
{:.output}

<aside class="notes" markdown="block">
[Return](#exercise-6))
</aside>

===

## Solution 7


~~~r
first <- function(dat) {
    if (is.vector(dat)) {
        result <- dat[1]
    } else if (is.matrix(dat)) {
        result <- dat[1, 1]
    } else {
        result <- dat[1, ]
    }
    return(result)
}
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
m <- matrix(1:9, nrow = 3, ncol = 3)
first(m)
~~~
{:.input}
~~~
[1] 1
~~~
{:.output}

<aside class="notes" markdown="block">
[Return](#exercise-7)
</aside>

===

## Solution 8


~~~r
surveys.hl_model <- lm(log(hindfoot_length) ~ log(weight), data = surveys)
~~~

~~~
Error in is.data.frame(data): object 'surveys' not found
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
coef(surveys.hl_model)[2]
~~~
{:.input}
~~~
Error in coef(surveys.hl_model): object 'surveys.hl_model' not found
~~~
{:.output}

<aside class="notes" markdown="block">
[Return](#exercise-8)
</aside>
