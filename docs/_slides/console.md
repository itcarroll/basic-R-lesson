---
---

## The Console

The interpreter accepts R commands interactively through the console. Basic math, as you would type it on a calculator, is usually a valid command in the R language:


~~~r
1 + 2
~~~
{:.input}
~~~
[1] 3
~~~
{:.output}


~~~r
5/3
~~~
{:.input}
~~~
[1] 1.666667
~~~
{:.output}


~~~r
4^2
~~~
{:.input}
~~~
[1] 16
~~~
{:.output}

===

Question
: Why is the output prefixed by `[1]`?

Answer
: {:.fragment} That's the index, or position in a vector, of the first result.

===

A command giving a vector of results shows this clearly:


~~~r
seq(1, 20)
~~~
{:.input}
~~~
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
~~~
{:.output}

The interpreter understands more than arithmatic operations!
The last command was to use (or "call") the **function** `seq()`.
Most of "learning R" involves getting to know a whole lot of functions, the effect of each function's  arguments (e.g. the input values 1 and 10), and what each function returns (e.g. the output vector).

===

We can expand the vocabulary known to the R interpreter by creating a **variable**.
Using the symbol `<-` is referred to as assignment: we assign the output of any command to the right of `<-` to any **variable** written to its left.


~~~r
x <- seq(1, 20)
~~~
{:.input}

You'll notice that nothing prints to the console, because we assigned the output to a variable.
We can print the value of `x` by evaluating it without assignment.


~~~r
x
~~~
{:.input}
~~~
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
~~~
{:.output}

===

Assigning values to new variables is the only time you can reference something previously unknown to the interpreter--and only to the left of `<-`!
All other commands must reference things already in the interpreter's vocabulary.

When you start a new session, the R interpreter already knows many things, including

- any number
- any string of characters
- operators that are universal (e.g. `+` or `/`) and specific to R (e.g. `$` or `%*%`)
- functions in `base R`

===

To reference a number or function you just type it in as above, but to referece a string of characters you must surround them in quotation marks.


~~~r
'ab.cd'
~~~
{:.input}
~~~
[1] "ab.cd"
~~~
{:.output}

Question
: Is it better to use `'` or `"`?

Answer
: {:.fragment} Neither one is better. You will often encounter stylistic choices like this, so if you don't have a personal preference try to mimic existing styles.

===

Without quotation marks, the interpreter checks for things named `ab.cd` and doesn't find anything:


~~~r
ab.cd
~~~
{:.input}
~~~
Error in eval(expr, envir, enclos): object 'ab.cd' not found
~~~
{:.output}

===

Anything you assign to a variable becomes known to R, so you can refer to it later.


~~~r
y <- 'ab.cd'
typeof(y)
~~~
{:.input}
~~~
[1] "character"
~~~
{:.output}
