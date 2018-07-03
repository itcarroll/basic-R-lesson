---
---

## Parts of an Object

Parts of a data structure are always accessible, either by their name or by their position, using square brackets: `[` and `]`.

===

## Position



~~~r
> counts[1]
~~~
{:.input}


~~~
[1] 4
~~~
{:.output}




~~~r
> counts[3]
~~~
{:.input}


~~~
[1] 7
~~~
{:.output}


===

## Names

Parts of an object may also have a name. The names can be given when you are creating a vector or afterwards using the `names()` function.

===



~~~r
> df['education']
~~~
{:.input}


~~~
   education
1    college
2 highschool
3    college
4     middle
5     middle
~~~
{:.output}


===



~~~r
names(df) <- c('ed', 'ct')
~~~
{:.text-document title="{{ site.handouts[0] }}"}




~~~r
> df['ed']
~~~
{:.input}


~~~
          ed
1    college
2 highschool
3    college
4     middle
5     middle
~~~
{:.output}


===

Question
: This use of `<-` with `names(x)` on the left is a little odd. What’s going on?

Answer
: {:.fragment} We are overwriting an existing variable, but one that is accessed through the output of the function on the left rather than the global environment.

===

For a multi-dimensional array, separate the dimension along which a part is requested with a comma.



~~~r
> df[3, 'ed']
~~~
{:.input}


~~~
[1] college
Levels: middle highschool college
~~~
{:.output}


It's fine to mix names and indices when selecting parts of an object.
{:.notes}

===

There are multiple ways to access several parts of an object together.

| Part      | Result                                            |
|-----------+---------------------------------------------------|
| positives | elements at given positions                       |
| negatives | given positions omitted                           |
| logicals  | elements where the corresponding position is TRUE |
| nothing   | all the elements                                  |

===



~~~r
days <- c(
  "Sunday", "Monday", "Tuesday", "Wednesday",
  "Thursday", "Friday", "Saturday")
weekdays <- days[2:6]
weekend <- days[c(1, 7)]
~~~
{:.text-document title="{{ site.handouts[0] }}"}




~~~r
> weekdays
~~~
{:.input}


~~~
[1] "Monday"    "Tuesday"   "Wednesday" "Thursday"  "Friday"   
~~~
{:.output}




~~~r
> weekend
~~~
{:.input}


~~~
[1] "Sunday"   "Saturday"
~~~
{:.output}


===

## Subsetting data frames

The `$` sign is an operator that makes for quick access to a single, named part of an object.
It's most useful when used interactively with "tab completion" on the columns of a data frame.



~~~r
> df$ed
~~~
{:.input}


~~~
[1] college    highschool college    middle     middle    
Levels: middle highschool college
~~~
{:.output}


===

A logical test applied to a single column produces a vector of `TRUE` and `FALSE` values that's the right length for subsetting the data.



~~~r
> df[df$ed == 'college', ]
~~~
{:.input}


~~~
       ed ct
1 college  4
3 college  7
~~~
{:.output}

