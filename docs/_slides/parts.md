---
---

## Parts of an Object

Parts of objects are always accessible, either by their name or by their position, using square brackets: `[` and `]`.

===

## Position


~~~r
counts[1]
~~~
{:.input}
~~~
[1] 4
~~~
{:.output}


~~~r
counts[3]
~~~
{:.input}
~~~
[1] 7
~~~
{:.output}

===

## Names

Parts of an object can usually also have a name. The names can be given when you are creating a vector or afterwards using the `names()` function. 


~~~r
df['education']
~~~
{:.input}
~~~
   education
1    college
2 highschool
3    college
4     middle
~~~
{:.output}

===


~~~r
names(df) <- c('ed', 'ct')
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
df['ed']
~~~
{:.input}
~~~
          ed
1    college
2 highschool
3    college
4     middle
~~~
{:.output}

===

Question
: This use of `<-` with `names(x)` on the left is a little odd. What’s going on?

Answer
: {:.fragment} We are overwriting an existing variable, but one that is accessed through the output of the function on the left rather than the global environment.

===

In a multi-dimensional array, you separate the dimension along which a part is requested with a comma.


~~~r
df[3, 'ed']
~~~
{:.input}
~~~
[1] college
Levels: middle < highschool < college
~~~
{:.output}

It's fine to mix names and indices when selecting parts of an object.

===

## Subsetting ranges

There are multiple ways to simultaneously extract multiple parts of an object.

| Use in brackets   | Subset instructions                                   |
|-------------------+-------------------------------------------------------|
| positive integers | elements at the specified positions                   |
| negative integers | omit elements at the specified positions              |
| logical vectors   | select elements where the corresponding value is TRUE |
| nothing           | return the original vector (all)                      |

===


~~~r
days <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
weekdays <- days[2:6]
weekend <- days[c(1, 7)]
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
weekdays
~~~
{:.input}
~~~
[1] "Monday"    "Tuesday"   "Wednesday" "Thursday"  "Friday"   
~~~
{:.output}


~~~r
weekend
~~~
{:.input}
~~~
[1] "Sunday"   "Saturday"
~~~
{:.output}

===

## Exercise 5

- Get weekdays using negative integers.
- Get M-W-F using a call to `seq()` to specify the positions (don't forget to `?seq`).

===

## Subsetting data frames

The `$` sign is an operator that makes for quick access to a single, named part of an object.
It's most useful when used interactively with "tab completion" on the columns of a data frame.


~~~r
df$ed
~~~
{:.input}
~~~
[1] college    highschool college    middle    
Levels: middle < highschool < college
~~~
{:.output}

===

A logical test applied to a single column produces a vector of `TRUE` and `FALSE` values that's the right length for subsetting the data.


~~~r
df[df$ed == 'college', ]
~~~
{:.input}
~~~
       ed ct
1 college  4
3 college  7
~~~
{:.output}

===

## Exercise 6

Subset the data frame `df` by row position and column name such that you obtain the following output.

~~~
[1] highschool college
Levels: middle < highschool < college
~~~
{:.output}

