---
---

## Data Structures

A data frame is a compound object, built up from (eventually) a few basic data
types, but there are intermediate objects to understand. Like all data frames,
`storm` is actually a "list".



~~~r
> typeof(storm)
~~~
{:title="Console" .input}


~~~
[1] "list"
~~~
{:.output}


===

The "list" is one of three one-dimensional data structurs you will regularly
encounter.

- Lists
- Vectors
- Factors

===

## Lists

Lists are one-dimensional and each element is entirely unrestricted; you can put
anything in a list.

===



~~~r
> x <- list('abc', 123, sin)
> str(x)
~~~
{:title="Console" .input}


~~~
List of 3
 $ : chr "abc"
 $ : num 123
 $ :function (x)  
~~~
{:.output}


===

Question
: Compare the structure of `storm` and `x` while thinking about the length of
each of their elements. Do the elements within list `x` have a lenght? The same
length?

Answer
: {:.fragment} The elements of `x` each has a length of 1. For example, the
command `length('abc')` yields `1`.

When you enter a single number or character string in R, you are actually
creating a one-dimensional data structure of length 1. There are not really
0-dimensional "scalars" in R. The kind of one-dimensional structure created in
this was is called a "vector".
{:.notes}

===

## Vectors

Vectors are an array of values of the same data type. Create a vector by
combining elements of the same type together using the function `c()`.



~~~r
c(1, 2, 3)
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .text-document}


~~~
[1] 1 2 3
~~~
{:.output}


===

All elements of an vector must be the same type, so when you attempt to combine
different types they will be coerced to the most flexible type.



~~~r
> c(1, 2, 'c')
~~~
{:title="Console" .input}


~~~
[1] "1" "2" "c"
~~~
{:.output}


The difference between `c(1, 2, 3)` and `c(1, 2, 'c')` isn't just in the third
element. To understand the difference, we need to recognize data types.

===

## Data Types

A data frame has now been recognized as a list, and the `str` command gives an
indication that each field has a data type. The final key property is its
dimension.



~~~r
> dim(storm)
~~~
{:title="Console" .input}


~~~
[1] 100  42
~~~
{:.output}


A data frame is essentially a list of vectors, with an important constraint. The
vectors must all be of the same length, giving a rectangular data structure.
{:.notes}

===

Here is a summary of the data types you frequently encounter in data frames.

| Type      | Example           |
|-----------+-------------------|
| double    | 3.1, 4, Inf, NaN  |
| integer   | 4L, length(...)   |
| character | 'a', '4', '👏'    |
| logical   | TRUE, FALSE       |

Both the double and integer data types are considered numeric, and while
the `str` function tells you that a double is "num", the `typeof` function
will properly identify either numeric type. Missing data created with `NA`
actually have a variant for each data type. So you can put `NA` in any vector
without breaking the fule that the elements of a vector have the same data type.
{:.notes}

===

## Factors

A factor is a vector that can contain only predefined values, and is used to
store categorical data. Factors are like integer vectors, but posess a `levels`
attribute that assigns names to each level, or possible value in the vector.

===

Use `factor()` to create a vector with predefined values, which are often
character strings.



~~~r
education <- factor(
    c('college', 'highschool', 'college', 'middle', 'middle'),
    levels = c('middle', 'highschool', 'college'))
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .text-document}


===

The `str` function notes the labels, but prints the integers assigned in their
stead.



~~~r
> str(education)
~~~
{:title="Console" .input}


~~~
 Factor w/ 3 levels "middle","highschool",..: 3 2 3 1 1
~~~
{:.output}


===

## Data Frames

One last property makes data frames stand out from lists: a data frame is a
list of *equal-length* vectors having *unique names*.

===

The "columns" visible in the data viewer are accessed by the `names` function.



~~~r
> names(storm)
~~~
{:title="Console" .input}


~~~
 [1] "BEGIN_YEARMONTH"   "BEGIN_DAY"         "BEGIN_TIME"       
 [4] "END_YEARMONTH"     "END_DAY"           "END_TIME"         
 [7] "EPISODE_ID"        "EVENT_ID"          "STATE"            
[10] "STATE_FIPS"        "YEAR"              "MONTH_NAME"       
[13] "EVENT_TYPE"        "CZ_TYPE"           "CZ_FIPS"          
[16] "CZ_NAME"           "WFO"               "BEGIN_DATE_TIME"  
[19] "CZ_TIMEZONE"       "END_DATE_TIME"     "INJURIES_DIRECT"  
[22] "INJURIES_INDIRECT" "DEATHS_DIRECT"     "DEATHS_INDIRECT"  
[25] "DAMAGE_PROPERTY"   "DAMAGE_CROPS"      "SOURCE"           
[28] "MAGNITUDE"         "MAGNITUDE_TYPE"    "BEGIN_RANGE"      
[31] "BEGIN_AZIMUTH"     "BEGIN_LOCATION"    "END_RANGE"        
[34] "END_AZIMUTH"       "END_LOCATION"      "BEGIN_LAT"        
[37] "BEGIN_LON"         "END_LAT"           "END_LON"          
[40] "EPISODE_NARRATIVE" "EVENT_NARRATIVE"   "DATA_SOURCE"      
~~~
{:.output}


===

In summary, a data frame is the data structure most similar to a spreadsheet,
with a few key differences:

- The columns are **equal-length** vectors.
- As vectors, a column cannot hold values of the wrong type.
- Each column has a unique name.

===

Creating a data frame from scratch can be done by combining vectors with the
`data.frame()` function.



~~~r
income <- c(32000, 28000, 89000, 0, 0)
df <- data.frame(education, income)
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .text-document}


===

Remember to use these functions when getting to know a data frame:

| `dim()`            | dimensions              |
| `nrow()`, `ncol()` | number of rows, columns |
| `names()`          | (column) names          |
| `str()`            | structure               |
| `summary()`        | summary info            |
| `head()`           | shows beginning rows    |

===

## Matrices

One way to understand the need for another data structure, the matrix, is that a
matrix differs from a data frame in terms of the underlying data type.

===

| Dimensions | Homogeneous | Heterogeneous  |
|------------+-------------+----------------|
| 1-D        | `c()`       | `list()`       |
| 2-D        | `matrix()`  | `data.frame()` |
| n-D        | `array()`   |                |
