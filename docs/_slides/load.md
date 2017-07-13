---
---

## Load data into R

We will use the function `read.csv()` that reads in a Comma-Separated-Values file by passing it the location of the file.
The essential argument for the function to read in data is the path to the file, and optinal additional arguments specify additional ways of reading the data.
Additional file types can be read in using `read.table()`; in fact, `read.csv()` is a simple wrapper  for the `read.table()` function that specifies default values for some of the optional arguments.

===

Type a comma after `read.csv(` and then press **tab** to see what arguments that this function takes.
Hovering over each item in the list will show a description of that argument from the help documentation about that function.
Specify the values to use for an argument using the syntax `name = value`. 


~~~r
read.csv(file = "data/plots.csv", header = TRUE)
~~~
{:.input}
~~~
   id                 treatment
1   1         Spectab exclosure
2   2                   Control
3   3  Long-term Krat Exclosure
4   4                   Control
5   5          Rodent Exclosure
6   6 Short-term Krat Exclosure
7   7          Rodent Exclosure
8   8                   Control
9   9         Spectab exclosure
10 10          Rodent Exclosure
11 11                   Control
12 12                   Control
13 13 Short-term Krat Exclosure
14 14                   Control
15 15  Long-term Krat Exclosure
16 16          Rodent Exclosure
17 17                   Control
18 18 Short-term Krat Exclosure
19 19  Long-term Krat Exclosure
20 20 Short-term Krat Exclosure
21 21  Long-term Krat Exclosure
22 22                   Control
23 23          Rodent Exclosure
24 24          Rodent Exclosure
~~~
{:.output}

===

Question
: Is the `header` argument necessary?

Answer
: {:.fragment} No. Look at `?read.csv` to see that `TRUE` is the default value for this argument.

===

Use the assignment operator "<-" to store that data in memory and work with it


~~~r
plots <- read.csv(file = "data/plots.csv")
surveys <- read.csv(file = "data/surveys.csv")
~~~

~~~
Warning in file(file, "rt"): cannot open file 'data/surveys.csv': No such
file or directory
~~~

~~~
Error in file(file, "rt"): cannot open the connection
~~~
{:.text-document title="{{ site.handouts }}"}

You can specify what indicates missing data in the read.csv function using either `na.strings = "NA"` or `na = "NA"`.
You can also specify multiple things to be interpreted as missing values, such as `na.strings = c("missing", "no data", "< 0.05 mg/L", "XX")`.

===

After reading in the "surveys.csv" and "plots.csv" files, let's explore what types of data are in each column and what kind of structure your data has. 


~~~r
str(plots)
~~~
{:.input}
~~~
'data.frame':	24 obs. of  2 variables:
 $ id       : int  1 2 3 4 5 6 7 8 9 10 ...
 $ treatment: Factor w/ 5 levels "Control","Long-term Krat Exclosure",..: 5 1 2 1 3 4 3 1 5 3 ...
~~~
{:.output}


~~~r
summary(plots)
~~~
{:.input}
~~~
       id                            treatment
 Min.   : 1.00   Control                  :8  
 1st Qu.: 6.75   Long-term Krat Exclosure :4  
 Median :12.50   Rodent Exclosure         :6  
 Mean   :12.50   Short-term Krat Exclosure:4  
 3rd Qu.:18.25   Spectab exclosure        :2  
 Max.   :24.00                                
~~~
{:.output}

===

## Exercise 4

By default, all character data is read in to a data.frame as factors.
Use the `read.csv()` argument `stringsAsFactors` to suppress this behavior, then subsequently modify the `sex` column in `surveys` to make it a factor.
Columns of a `data.frame` are identified to the R interpreter with the `$` operator, e.g. `surveys$sex`. We'll see more on this below.

[View solution](#solution-4)
{:.notes}
