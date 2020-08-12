---
---

## Data Structures

The `str()` function just showed us that our data is made up of one-dimensional data structures (columns). 

===

There are two one-dimensional data structures you will regularly
encounter.

- Lists
- Vectors

===

## Lists

Lists are one-dimensional and each element is entirely unrestricted; you can put
anything in a list.

===

Create a list called `x` with a string, a sequence, and a function.



~~~r
x <- list('abc', 1:3, sin)
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .text-document}


===

All data frames are actually lists, so our data frame `storm` is actually a list.  We'll get into more details later, but you can check this out with the function `typeof()`.   



~~~r
> typeof(storm)
~~~
{:title="Console" .input}


~~~
[1] "list"
~~~
{:.output}


===

Question
: Compare the structure of `storm` and `x` while thinking about the length of
each of their elements. Do the elements within list `x` have a length? The same
length?

Answer
: {:.fragment} The elements of `x` all have lengths, and are not all the same.
Note that the command `length('abc')` yields `1`.

When you enter a single number or character string in R, you are actually
creating a one-dimensional data structure of length 1. There are not really
0-dimensional "scalars" in R. The kind of one-dimensional structure created in
this is called a "vector".
{:.notes}

===

## Vectors

Vectors are one-dimensional but unlike lists, values must be of the same data type (e.g. integer, character, logical). 

===

Create a vector by combining elements of the same type together using the concatenate function `c()`.  

Type `?c()` in the console to learn more about this really common and useful function. 
{:.notes}



~~~r
> c(1, 2, 3)
~~~
{:title="Console" .input}


~~~
[1] 1 2 3
~~~
{:.output}


===

All elements of a vector must be the same type, so when you attempt to combine
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

Here is a summary of the data types you frequently encounter in R.

| Type      | Example                  |
|-----------+--------------------------|
| double    | 3.1, 4, Inf, NaN         |
| integer   | 4L, length(...)          |
| character | 'a', '4', '👏'           |
| logical   | TRUE, FALSE              |
| factor    | "category1", "category2" |

Both the double and integer data types are considered numeric, and while
the `str` function tells you that a double is "num", the `typeof` function
will properly identify either numeric type. 
{:.notes}

Missing data created with `NA` actually have a variant for each data type. So you can put
`NA` in any vector without breaking the rule that the elements of a vector have the same
data type.
{:.notes}

===

## Factors

Data of type factor is stored in a vector that can only contain predefined values of
categorical data.  Factors are similar to character vectors, but possess a `levels`
attribute that assigns names to each level, or distinct value, in the vector.

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

The `str` function identifies this vector as being of data type "factor" and notes the labels for each level, but prints the integers assigned to the levels instead of the labels.  



~~~r
> str(education)
~~~
{:title="Console" .input}


~~~
 Factor w/ 3 levels "middle","highschool",..: 3 2 3 1 1
~~~
{:.output}


Factors can sometimes be tricky to work with in R.  While factors can be useful for plotting data by categories, they can often get in the way of other calculations and analyses.  It is good to know how to convert between data types with the functions `as.character()`, `as.integer()`, `as.factor()`, `as.numeric()`.  
{:.notes}

===

## Data Frames

We mentioned above that a data frame is actually a list of vectors, but with a few
important constraints. The _vectors_ must all be of the _same length_, giving a
rectangular data structure.  Vectors must also each have a _unique name_ (column name).

Use the `dim()` function to check the dimensions of our `storm` data frame.



~~~r
> dim(storm)
~~~
{:title="Console" .input}


~~~
[1] 100  42
~~~
{:.output}


===

The column names are accessed by the `names()` function.



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

Creating a data frame from scratch can be done by combining vectors with the
`data.frame()` function.  We created the `education` vector above.  Now create a
vector named `income`, and put the two vectors together to make a data frame.



~~~r
income <- c(32000, 28000, 89000, 0, 0)
df <- data.frame(education, income)
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .text-document}


===

In summary, a data frame is the data structure most similar to a spreadsheet,
with a few key differences:

- The columns must be **equal-length** vectors.
- As vectors, a column must hold values of the **same type**.
- Each column must have a **unique name**.

===

### Remember to use these functions when getting to know a data frame:

| `dim()`            | dimensions              |
| `nrow()`, `ncol()` | number of rows, columns |
| `names()`          | (column) names          |
| `str()`            | structure               |
| `summary()`        | summary info            |
| `head()`           | shows first few rows    |
| `tail()`           | shows last few rows     |

===

## Matrices

The matrix is a two-dimensional data structure, and differs from a data frame in terms
of the underlying data type.  A matrix must be composed of elements of the _same data type_.  You can check to see if you have a matrix by using the `class()` function.

===

When should you use a matrix vs. a data frame? 

If your columns of data have different data types (e.g. integer, character, factor), you need to use a data frame.  

If the analysis or functions you are using expect one structure or the other, you should use the expected data structure

===

### Data structure quick reference:

| Data Dimensions | Data Type: <br>Homogeneous | Data Type: <br>Heterogeneous  |
|------------+-------------+----------------|
| 1-D        | `c()`       | `list()`       |
| 2-D        | `matrix()`  | `data.frame()` |
| n-D        | `array()`   |                |

