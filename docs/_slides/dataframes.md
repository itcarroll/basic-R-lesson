---
---

## Tables, Matrices & Arrays

Data can be stored in several additional data structures depending on its complexity.

===

| Dimensions | Homogeneous | Heterogeneous |
|------------+-------------+---------------|
| 1d         | c()         | list()        |
| 2d         | matrix()    | data.frame()  |
| nd         | array()     |               |

Of these, the data frame is far and away the most used.
{:.notes}

===

## Data frames

Data frames are 2-dimensional and can contain heterogenous data like numbers in one column and a factor in another.

===

It is the data structure most similar to a spreadsheet, with two key differences:

- The columns are **equal-length** vectors.
- As vectors, the columns are homogeneous and cannot hold values of the "wrong" type.

===

Creating a data frame from scratch can be done by combining vectors with the `data.frame()` function.



~~~r
df <- data.frame(education, counts)
~~~
{:.text-document title="{{ site.handouts[0] }}"}


===

There are several functions to get to know a data frame:

| `dim()`            | dimensions              |
| `nrow()`, `ncol()` | number of rows, columns |
| `names()`          | (column) names          |
| `str()`            | structure               |
| `summary()`        | summary info            |
| `head()`           | shows beginning rows    |

===



~~~r
> names(df)
~~~
{:.input title="Console"}


~~~
[1] "education" "counts"   
~~~
{:.output}

