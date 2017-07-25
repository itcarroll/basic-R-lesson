---
---

## Exercise solutions

===

## Solution 1

First solution:


~~~r
(-0.3 + sqrt(0.3 ^ 2 - 4 * 1.5 * -2.9)) / (2 * 1.5)
~~~

~~~
[1] 1.294035
~~~
{:.text-document title="{{ site.handouts }}"}

Second solution:


~~~r
(-0.3 - sqrt(0.3 ^ 2 - 4 * 1.5 * -2.9)) / (2 * 1.5)
~~~

~~~
[1] -1.494035
~~~
{:.text-document title="{{ site.handouts }}"}

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
animals <- read.csv('data/animals.csv', stringsAsFactors = FALSE, na.strings = '')
animals$sex <- factor(animals$sex)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
str(animals)
~~~
{:.input}
~~~
'data.frame':	35549 obs. of  9 variables:
 $ id             : int  2 3 4 5 6 7 8 9 10 11 ...
 $ month          : int  7 7 7 7 7 7 7 7 7 7 ...
 $ day            : int  16 16 16 16 16 16 16 16 16 16 ...
 $ year           : int  1977 1977 1977 1977 1977 1977 1977 1977 1977 1977 ...
 $ plot_id        : int  3 2 7 3 1 2 1 1 6 5 ...
 $ species_id     : chr  "NL" "DM" "DM" "DM" ...
 $ sex            : Factor w/ 2 levels "F","M": 2 1 2 2 2 1 2 1 1 1 ...
 $ hindfoot_length: int  33 37 36 35 14 NA 37 34 20 53 ...
 $ weight         : int  NA NA NA NA NA NA NA NA NA NA ...
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
animals.hl_model <- lm(log(hindfoot_length) ~ log(weight), data = animals)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
coef(animals.hl_model)[2]
~~~
{:.input}
~~~
log(weight) 
  0.3961338 
~~~
{:.output}

<aside class="notes" markdown="block">
[Return](#exercise-8)
</aside>
