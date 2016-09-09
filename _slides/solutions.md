---
---

## Exercise solutions

### Solution 1


~~~r
species <- c()
count <- c()
data <- data.frame(species, count)
~~~
{:.text-document title="lesson-2.R"}


~~~r
data
~~~
{:.input}

~~~
data frame with 0 columns and 0 rows
~~~
{:.output}

<!--split-->

### Solution 2


~~~r
sol2a <- days[c(-1, -7)]
sol2b <- days[seq(2, 7, 2)]
~~~
{:.text-document title="lesson-2.R"}


~~~r
sol2a
~~~
{:.input}

~~~
[1] "Monday"    "Tuesday"   "Wednesday" "Thursday"  "Friday"   
~~~
{:.output}


~~~r
sol2b
~~~
{:.input}

~~~
[1] "Monday"    "Wednesday" "Friday"   
~~~
{:.output}

<!--split-->

### Solution 3


~~~r
sol3 <- df[2:3, 'ed']
~~~
{:.text-document title="lesson-2.R"}


~~~r
sol3
~~~
{:.input}

~~~
[1] highschool college   
Levels: middle < highschool < college
~~~
{:.output}

<!--split-->

### Solution 4


~~~r
df <- data.frame(
    size = 1:5,
    year = factor(
        c(2014, 2014, 2013, 2015, 2015),
	levels = c(2013, 2014, 2015),
	ordered = TRUE),
    prop = runif(n = 5))
~~~
{:.text-document title="lesson-2.R"}


~~~r
str(df)
~~~
{:.input}

~~~
'data.frame':	5 obs. of  3 variables:
 $ size: int  1 2 3 4 5
 $ year: Ord.factor w/ 3 levels "2013"<"2014"<..: 2 2 1 3 3
 $ prop: num  0.66573 0.82501 0.59074 0.00753 0.11221
~~~
{:.output}
