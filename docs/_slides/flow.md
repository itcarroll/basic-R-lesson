---
---

## Flow Control

A generic term for causing the interpreter to repeat or skip certain lines,
using concepts like "for loops" and conditionals.

The R interpreter's "focus" flows through a script (or any section of code you
run) line by line. Without additional instruction, every line is processed from
the top to bottom. Flow control refers mostly to the two main ways of directing
the interpreter's focus, via loops and conditions.

===

Flow control happens within blocks of code isolated between curly braces `{` and
`}`, known as "statements".



~~~r
if (...) {
    ...
} else {
    ...
}
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .no-eval .text-document}


===

The keyword `if` must be followed by a logical test which determines, at
runtime, what to do next. The R interpreter goes to the first statement if the
logical value is `TRUE` and to the second statement if it's `FALSE`.
{:.notes}



~~~r
> if (logical_test) {
+     statement_1
+ } else {
+     statement_2
+ }
~~~
{:title="Console" .no-eval .input}


===

Let's try building a simple if/else statement.  

This tests whether the first element in the `ed` column of our data frame `df` contains the word "college".  If it does, it prints the first element of the `inc` column.  Otherwise, it prints "no college education".  
{:.notes}



~~~r
if (df$ed[1] == "college") {
    print(df$inc[1])
} else {
    print("no college education")
}
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .no-eval .text-document}


===

An if/else conditional would allow the `first()` function we wrote previously to avoid the error
thrown by calling `first(counts)`.



~~~r
first <- function(dat) {
    if (is.vector(dat)) {
        result <- dat[[1]]
    } else {
        result <- dat[1, ]
    }
    return(result)
}
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .text-document}


===



~~~r
> first(df)
~~~
{:title="Console" .input}


~~~
       ed   inc
1 college 32000
~~~
{:.output}




~~~r
> first(income)
~~~
{:title="Console" .input}


~~~
[1] 32000
~~~
{:.output}

