---
---

## Functions

Functions package up a batch of commands. There are several reasons to develop
functions in R for data analysis:

- reuse
- readability
- modularity
- consistency

If you find yourself copy-pasting code, or see blocks of similar code through your
project, those are candidates for being moved into functions.  Writing functions
prevents you from duplicating code, making errors from copy-pasting that are difficult
to troubleshoot, and is a real time-saver when you want to update what the function
does.  If you're doing something more than twice, write a function!
{:.notes}

===

## Anatomy of a function

Like all programming languages, R has keywords that are reserved for important
activities, like creating functions.  Keywords are usually very intuitive; the
one we need is `function`.

===



~~~r
function(...) {
    ...
    return(...)
}
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .no-eval .text-document}


===

Three components of a function:

- __arguments__: control how you can call the function
- __body__: the code inside the function
- __return value__: controls what output the function gives



~~~r
function(arguments) {
    body
    return(return_value)
}
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .no-eval .text-document}


===

We'll make a function to extract the first row of its argument, which we give the
placeholder name `a` to use inside the function:



~~~r
function(a) {
    result <- a[1, ]
    return(result)
}
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .no-eval .text-document}


Note that `a` doesn't exist outside our function.  Our function contains
the instructions for how _any_ `a` will be handled.  We supply what `a` is as the
argument when we call the function.  
{:.notes}

===

Finally, we need to give the function a name so we can use it like we used `c()`
and `seq()` above.



~~~r
first <- function(a) {
    result <- a[1, ]
    return(result)
}
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .text-document}


===

Now we can call our function, and supply the argument `df`.  



~~~r
> first(df)
~~~
{:title="Console" .input}


~~~
       ed    in
1 college 32000
~~~
{:.output}


===

Question
: Can you explain the result of entering `first(income)` into the console?

Answer
: {:.fragment} The function caused an error, which prompted the interpreter to
print a helpful error message. Never ignore an error message. (It's okay to
ignore a "warning".)
