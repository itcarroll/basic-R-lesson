---
---

## Multi-dimensional data structures

Data can be stored in several types of data structures depending on its complexity. 

| Dimensions | Homogeneous | Heterogeneous |
|------------+-------------+---------------|
| 1d         | c()         | list()        |
| 2d         | matrix()    | data.frame()  |
| nd         | array()     |               |

Of these, the data frame is far and away the most used.

===

## Data frames

Data frames are 2-dimensional and can contain heterogenous data like numbers in one column and a factor in another.

It is the data structure most similar to a spreadsheet, with two key differences:

- Data frames columns are *equal-length* vectors.
- As vectors, the columns are homogeneous and cannot hold values of the *wrong* type.

===

Creating a data frame from scratch can be done by combining vectors with the `data.frame()` function.


~~~r
df <- data.frame(education, counts)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
df
~~~
{:.input}
~~~
   education counts
1    college      4
2 highschool      3
3    college      7
4     middle      5
~~~
{:.output}

===

Some functions to get to know your data frame are:

| Function    | Output               |
|-------------+----------------------|
| `dim()`     | dimensions           |
| `nrow()`    | number of rows       |
| `ncol()`    | number of columns    |
| `names()`   | (column) names       |
| `str()`     | structure            |
| `summary()` | summary info         |
| `head()`    | shows beginning rows |


~~~r
names(df)
~~~
{:.input}
~~~
[1] "education" "counts"   
~~~
{:.output}

===

## Exercise 2

Create a data frame with two columns, one called "species" and another called "count". Store your data frame as a variable called `data`. You can do this with or without populating the data frame with values.

===

Read a CSV file into a data frame using the `read.csv()` function.


~~~r
surveys <- read.csv('data/surveys.csv')
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
head(surveys)
~~~
{:.input}
~~~
  record_id month day year plot_id species_id sex hindfoot_length weight
1         1     7  16 1977       2         NL   M              32     NA
2         2     7  16 1977       3         NL   M              33     NA
3         3     7  16 1977       2         DM   F              37     NA
4         4     7  16 1977       7         DM   M              36     NA
5         5     7  16 1977       3         DM   M              35     NA
6         6     7  16 1977       1         PF   M              14     NA
~~~
{:.output}
