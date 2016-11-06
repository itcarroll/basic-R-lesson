---
---

## Load data into R

We will use the function `read.table()` that reads in a file by passing it the location of the file. The general syntax for the functions to read in data are to give the path to the file name, and then supply optinal additional arguments as necessary like specifying the type of data in each column. Specific file types can be read in using functions like `read.csv()` which are wrappers for the `read.table()` function that have different default settings.

Type a comma after `read.table(` and then press **tab** to see what arguments that this function takes. Hovering over each item in the list will show a description of that argument from the help documentation about that function. Specify the values to use for an argument using the syntax `name = value`. 


~~~r
read.table(file="data/plots.csv", header = TRUE, sep = ",")
~~~
{:.input}
~~~
   plot_id                 plot_type
1        1         Spectab exclosure
2        2                   Control
3        3  Long-term Krat Exclosure
4        4                   Control
5        5          Rodent Exclosure
6        6 Short-term Krat Exclosure
7        7          Rodent Exclosure
8        8                   Control
9        9         Spectab exclosure
10      10          Rodent Exclosure
11      11                   Control
12      12                   Control
13      13 Short-term Krat Exclosure
14      14                   Control
15      15  Long-term Krat Exclosure
16      16          Rodent Exclosure
17      17                   Control
18      18 Short-term Krat Exclosure
19      19  Long-term Krat Exclosure
20      20 Short-term Krat Exclosure
21      21  Long-term Krat Exclosure
22      22                   Control
23      23          Rodent Exclosure
24      24          Rodent Exclosure
~~~
{:.output}

Use the assignment operator "<-" to store that data in memory and work with it


~~~r
plots <- read.table(file="data/plots.csv", sep = ",", header = TRUE)
surveys <- read.csv(file="data/surveys.csv", sep = ",", header = TRUE)
~~~
{:.input}

You can specify what indicates missing data in the read.csv function using either `na.strings = "NA"` or `na = "NA"`. You can also specify multiple things to be interpreted as missing values, such as `na.strings = c("missing", "no data", "< 0.05 mg/L", "XX")`.

After reading in the Surveys and Plots csv files, let's explore what types of data are in each column and what kind of structure your data has. 


~~~r
str(plots)
~~~
{:.input}
~~~
'data.frame':	24 obs. of  2 variables:
 $ plot_id  : int  1 2 3 4 5 6 7 8 9 10 ...
 $ plot_type: Factor w/ 5 levels "Control","Long-term Krat Exclosure",..: 5 1 2 1 3 4 3 1 5 3 ...
~~~
{:.input}
~~~r
summary(plots)
~~~
{:.input}
~~~
    plot_id                          plot_type
 Min.   : 1.00   Control                  :8  
 1st Qu.: 6.75   Long-term Krat Exclosure :4  
 Median :12.50   Rodent Exclosure         :6  
 Mean   :12.50   Short-term Krat Exclosure:4  
 3rd Qu.:18.25   Spectab exclosure        :2  
 Max.   :24.00                                
~~~
{:.input}
~~~r
str(surveys)
~~~
{:.input}
~~~
'data.frame':	35549 obs. of  9 variables:
 $ record_id      : int  1 2 3 4 5 6 7 8 9 10 ...
 $ month          : int  7 7 7 7 7 7 7 7 7 7 ...
 $ day            : int  16 16 16 16 16 16 16 16 16 16 ...
 $ year           : int  1977 1977 1977 1977 1977 1977 1977 1977 1977 1977 ...
 $ plot_id        : int  2 3 2 7 3 1 2 1 1 6 ...
 $ species_id     : Factor w/ 49 levels "","AB","AH","AS",..: 17 17 13 13 13 24 23 13 13 24 ...
 $ sex            : Factor w/ 3 levels "","F","M": 3 3 2 3 3 3 2 3 2 2 ...
 $ hindfoot_length: int  32 33 37 36 35 14 NA 37 34 20 ...
 $ weight         : int  NA NA NA NA NA NA NA NA NA NA ...
~~~
{:.input}
~~~r
summary(surveys)
~~~
{:.input}
~~~
   record_id         month             day             year     
 Min.   :    1   Min.   : 1.000   Min.   : 1.00   Min.   :1977  
 1st Qu.: 8888   1st Qu.: 4.000   1st Qu.: 9.00   1st Qu.:1984  
 Median :17775   Median : 6.000   Median :16.00   Median :1990  
 Mean   :17775   Mean   : 6.474   Mean   :16.11   Mean   :1990  
 3rd Qu.:26662   3rd Qu.: 9.000   3rd Qu.:23.00   3rd Qu.:1997  
 Max.   :35549   Max.   :12.000   Max.   :31.00   Max.   :2002  
                                                                
    plot_id       species_id    sex       hindfoot_length     weight      
 Min.   : 1.0   DM     :10596    : 2511   Min.   : 2.00   Min.   :  4.00  
 1st Qu.: 5.0   PP     : 3123   F:15690   1st Qu.:21.00   1st Qu.: 20.00  
 Median :11.0   DO     : 3027   M:17348   Median :32.00   Median : 37.00  
 Mean   :11.4   PB     : 2891             Mean   :29.29   Mean   : 42.67  
 3rd Qu.:17.0   RM     : 2609             3rd Qu.:36.00   3rd Qu.: 48.00  
 Max.   :24.0   DS     : 2504             Max.   :70.00   Max.   :280.00  
                (Other):10799             NA's   :4111    NA's   :3266    
~~~
{:.output}

Each column in a data frame can be referred to using the `$` operator and the data frame name and the column name. `surveys$record_id` refers to the record_id column in the surveys data frame.


Note that by default, character data is read in as factors when you load data into R. Later, we will use the argument `stringsAsfactors = FALSE` to suppress this behavior because it can cause confusion.

===

## Exercise
{:.ex}

Fix each of the following common data frame subsetting errors:


~~~r
plots[plots$plot_id = 4, ]
plots[-1:4, ]
plots[plots$plot_id <= 5]
plots[plots$plot_id == 4 | 6, ]
~~~
{:.input}

