---
---

## Data types and structures

| Type      | Example           |
|-----------+-------------------|
| integer   | -4, 0, 999        |
| double    | 3.1, -4, Inf, NaN |
| character | "a", "4", "👏"     |
| logical   | TRUE, FALSE       |
| missing   | NA                |

Data structures, or more generally "objects", are built from one or more of these data types and other objects.

===

## Vectors

Vectors are the basic data structure in R. They are a collection of data that are all of the same type. Create a vector by combining elements together using the function `c()`. Use the operator `:` for a sequence of numbers (forwards or backwards), otherwise separate elements with commas. 


~~~r
counts <- c(4, 3, 7, 5)
~~~
{:.text-document title="{{ site.handouts }}"}

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

Lists are like vectors but their elements can be of any data type or structure, including another list! You construct lists by using `list()` instead of `c()`. 

Compare the results of `list()` and `c()`


~~~r
x <- list(list(1, 2), c(3, 4))
y <- c(list(1, 2), c(3, 4))
~~~
{:.text-document title="{{ site.handouts }}"}

Question
: What's different about the structure of the variables `x` and `y`? Use the function `str()` to investigate.

Answer
: {:.fragment} The list contains two elements, a list and a vector. The vector `y` flattened the elements to a single element of the most flexible data type.

===

## Factors

A factor is a vector that can contain only predefined values, and is used to store categorical data. Factors are built on top of integer vectors using two attributes: the `class()`, “factor”, which makes them behave differently from regular integer vectors, and their `levels()`, or the set of allowed values. 

===

Use `factor()` to create a vector with predefined values, which are often characters or "strings".


~~~r
education <- factor(
    c("college", "highschool", "college", "middle"),
    levels = c("middle", "highschool", "college"))
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
str(education)
~~~
{:.input}
~~~
 Factor w/ 3 levels "middle","highschool",..: 3 2 3 1
~~~
{:.output}

===

A factor can be unorderd, as above, or ordered with each level somehow "less than" the next.


~~~r
education <- factor(
    c("college", "highschool", "college", "middle"),
    levels = c("middle", "highschool", "college"),
    ordered = TRUE)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
str(education)
~~~
{:.input}
~~~
 Ord.factor w/ 3 levels "middle"<"highschool"<..: 3 2 3 1
~~~
{:.output}
