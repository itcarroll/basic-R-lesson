---
---

## Data types

| Type      | Example           |
|-----------+-------------------|
| double    | 3.1, -4, Inf, NaN |
| integer   | -4L, 0L, 999L     |
| character | 'a', '4', '👏'     |
| logical   | TRUE, FALSE       |
| missing   | NA                |

===

## Data structures

Compound objects, built from one or more of these data types, or even other objects.

===

Common one-dimensional, array data structures:

- Vectors
- Lists
- Factors

===

## Vectors

Vectors are the basic data structure in R. They are a collection of data that are all of the same type. Create a vector by combining elements together using the function `c()`.


~~~r
counts <- c(4, 3, 7, 5, 2)
~~~
{:.text-document title="{{ site.handouts }}"}

===

All elements of an vector must be the same type, so when you attempt to combine different types they will be coerced to the most flexible type. 


~~~r
c(1, 2, "c")
~~~
{:.input}
~~~
[1] "1" "2" "c"
~~~
{:.output}

===

## Lists

Lists are like vectors but their elements can be of any data type or structure.

===

Construct lists with `list()` instead of `c()`:


~~~r
list(1, 2, "c")
~~~
{:.input}
~~~
[[1]]
[1] 1

[[2]]
[1] 2

[[3]]
[1] "c"
~~~
{:.output}

===

Lists can even include another list! 


~~~r
list(1, list(2, 3))
~~~
{:.input}
~~~
[[1]]
[1] 1

[[2]]
[[2]][[1]]
[1] 2

[[2]][[2]]
[1] 3
~~~
{:.output}

===

## Exercise 2

Use the `typeof` function to inspect the data type of `counts`, and do the same for another variable to which you assign a list of numbers. Why are they different? What is the data type the results when you use `c` to combine `counts` with the new variable you just created, in terms of the underlying data type? Does `c` always create vectors?

[View solution](#solution-2)
{:.notes}

===

## Factors

A factor is a vector that can contain only predefined values, and is used to store categorical data. Factors are like integer vectors, but posess a `levels` attribute that assigns names to however many discrete categories are specified.

===

Use `factor()` to create a vector with predefined values, which are often characters or "strings".


~~~r
education <- factor(
    c("college", "highschool", "college", "middle", "middle"),
    levels = c("middle", "highschool", "college"))
~~~
{:.text-document title="{{ site.handouts }}"}

===

The `str` function notes the labels, but printsthe integers assigned in their stead.


~~~r
str(education)
~~~
{:.input}
~~~
 Factor w/ 3 levels "middle","highschool",..: 3 2 3 1 1
~~~
{:.output}
