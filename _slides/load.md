---
---

## Load data into R

We will use the function `read.table()` that reads in a file by passing it the location of the file. The general syntax for the functions to read in data are to give the path to the file name, and then supply optinal additional arguments as necessary like specifying the type of data in each column. Specific file types can be read in using functions like `read.csv()` which are wrappers for the `read.table()` function that have different default settings.

Type a comma after `read.table(` and then press **tab** to see what arguments that this function takes. Hovering over each item in the list will show a description of that argument from the help documentation about that function. Specify the values to use for an argument using the syntax `name = value`. 


~~~r
read.table(file="%sandbox%/data/plots.csv", header = TRUE, sep = ",")
~~~
{:.input}

Use the assignment operator "<-" to store that data in memory and work with it


~~~r
plots <- read.table(file=""%sandbox%/data/plots.csv", sep = ",", header = TRUE)
surveys <- read.csv(file=""%sandbox%/data/surveys.csv", sep = ",", header = TRUE)
~~~
{:.input}

You can specify what indicates missing data in the read.csv function using either `na.strings = "NA"` or `na = "NA"`. You can also specify multiple things to be interpreted as missing values, such as `na.strings = c("missing", "no data", "< 0.05 mg/L", "XX")`.

After reading in the Surveys and Plots csv files, let's explore what types of data are in each column and what kind of structure your data has. 


~~~r
str(plots)
summary(plots)

str(surveys)
summary(surveys)
~~~
{:.input}

Each column in a data frame can be referred to using the `$` operator and the data frame name and the column name. `surveys$record_id` refers to the record_id column in the surveys data frame.

<!--split-->

## Exercise

Fix each of the following common data frame subsetting errors:


~~~r
plots[plots$plot_id = 4, ]
plots[-1:4, ]
plots[plots$plot_id <= 5]
plots[plots$plot_id == 4 | 6, ]
~~~
{:.input}
