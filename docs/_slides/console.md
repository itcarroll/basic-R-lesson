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
seq(1, 50)
~~~
{:.input}
~~~
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23
[24] 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46
[47] 47 48 49 50
~~~
{:.output}

The interpreter understands more than arithmatic operations!
The last command was to use (or "call") the **function** `seq()`.
Most of "learning R" involves getting to know a whole lot of functions, the effect of each function's  arguments (e.g. the input values 1 and 10), and what each function returns (e.g. the output vector).

===

## Basic math 

A good place to begin learning R functions is with its built-in mathematical functionality:

- binary operators `+`, `-`, `*`, `/`, and `^` (for raising to a power)
- "smooth" functions like `sin`, `log`, and `sqrt`
- additional functions like `max`, `range`, and `mean`

===

Use binary operators by inserting them between two numbers, grouped by parentheses when necessary.


~~~r
(1 + 2) / 3
~~~
{:.input}
~~~
[1] 1
~~~
{:.output}

Use functions by calling them with comma-separated arguments between parentheses.


~~~r
logb(2, 2)
~~~
{:.input}
~~~
[1] 1
~~~
{:.output}

===

## Exercise 1

The quadratic formula for the two values of $x$ that satisfy the equation $a x^2 + b x + c = 0$ is $\frac{-b \pm \sqrt(b^2 - 4 a c)}{2 a}$.
Use the quadratic formula to calculate both values of $x$ that solve $1.5 x^2 + 0.3 x - 2.9 = 0$.

===

## Assignment

We can expand the vocabulary known to the R interpreter by creating a **variable**.
Using the symbol `<-` is referred to as assignment: we assign the output of any command to the right of `<-` to any **variable** written to its left.


~~~r
x <- seq(1, 50)
~~~
{:.input}

You'll notice that nothing prints to the console, because we assigned the output to a variable.
We can print the value of `x` by evaluating it without assignment.


~~~r
x
~~~
{:.input}
~~~
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23
[24] 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46
[47] 47 48 49 50
~~~
{:.output}

===

Assigning values to new variables (to the left of a `<-`) is the only time you can reference something previously unknown to the interpreter.
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

