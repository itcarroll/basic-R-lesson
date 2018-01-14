---
---

## Functions

Functions package up a batch of commands. There are several reasons to develop
functions in R for data analysis:

- reuse
- readability
- modularity
- consistency

Writing functions to use multiple times within a project prevents you from
duplicating code, a real time-saver when you want to update what the function
does. If you see blocks of similar lines of code through your project, those are
usually candidates for being moved into functions.
{:.notes}

===

## Anatomy of a function

Like all programming languages, R has keywords that are reserved for import
activities, like creating functions. Keywords are usually very intuitive, the
one we need is `function`.

===


~~~r
function(...) {
    ...
    return(...)
}
~~~
{:.text-document title="{{ site.handouts[0] }}"}

Three components:

- __arguments__: control how you can call the function
- __body__: the code inside the function
- __return value__: controls what output the function gives

===

We'll make a function to extract the first row of its argument, which we give a
name to use inside the function:


~~~r
function(z) {
    result <- z[1, ]
    return(result)
}
~~~
{:.text-document title="{{ site.handouts[0] }}"}

Note that `z` doesn't exist until we call the function, which merely contains
the instructions for how any `z` will be handled.

===

Finally, we need to give the function a name so we can use it like we used `c()`
and `seq()` above.


~~~r
first <- function(z) {
    result <- z[1, ]
    return(result)
}
~~~
{:.text-document title="{{ site.handouts[0] }}"}


~~~r
first(df)
~~~
{:.input}
~~~
       ed ct
1 college  4
~~~
{:.output}

===

Question
: Can you explain the result of entering `first(counts)` into the console?

Answer
: {:.fragment} The function caused an error, which prompted the interpreter to
print a helpful error message. Never ignore an error message. (It's okay to
ignore a "warning".)
