---
---

## The Console

The interpreter accepts commands interactively through the console.

===

Basic math, as you would type it on a calculator, is usually a valid command in the R language:


~~~r
1 + 2
~~~
{:.input}
~~~
[1] 3
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

===

The interpreter understands more than arithmatic operations.
That last command told it to use (or "call") the function `seq()`.

Most of "learning R" involves getting to know a whole lot of functions, the effect of each function's  arguments (e.g. the input values 1 and 10), and what each function returns (e.g. the output vector).
{:.notes}

===

## Basic math 

A good place to begin learning R functions is with its built-in mathematical functionality.

===

## Arithmatic operators

Try `+`, `-`, `*`, `/`, and `^` (for raising to a power).


~~~r
5/3
~~~
{:.input}
~~~
[1] 1.666667
~~~
{:.output}

===

## Logical tests

Test equality with `==` and inequality with `=<`, `<`, `!=`, `>`, or `=>`.


~~~r
1/2 == 0.5
~~~
{:.input}
~~~
[1] TRUE
~~~
{:.output}

===

## More Math

Common mathematical functions like `sin`, `log`, and `sqrt`, and constants.


~~~r
sin(2 * pi)
~~~
{:.input}
~~~
[1] -2.449294e-16
~~~
{:.output}

===

## Programming idoms

Common computer programming functions like 'rep', 'sort', and 'range'


~~~r
rep(2, 5)
~~~
{:.input}
~~~
[1] 2 2 2 2 2
~~~
{:.output}

===

## Parentheses

Sandwiching something with `(` and `)` has two possible meanings.

===

Group sub-expressions by parentheses on an as-needed basis.


~~~r
(1 + 2) / 3
~~~
{:.input}
~~~
[1] 1
~~~
{:.output}

===

Call functions by typing their name and comma-separated arguments between parentheses.


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

Use the quadratic formula to find $$x$$ that satisfies the
equation $1.5 x^2 + 0.3 x - 2.0 = 0$.

$$
\frac{-0.3 \pm \sqrt{0.3^2 - 4 \times 1.5 \times {-2.9}}}{2 \times 1.5}
$$


[View solution](#solution-1)
{:.notes}

===

## Assignment

When you start a new session, the R interpreter already recognizes many things, including

- any number
- any string of characters
- nearly universal operators (e.g. `+` and `/`)
- operators specific to R (e.g. `$` and `%*%`)
- functions in "base R"

===

To reference a number or function just type it in as above.
To referece a string of characters, surround them in quotation marks.


~~~r
'ab.cd'
~~~
{:.input}
~~~
[1] "ab.cd"
~~~
{:.output}

===

Without quotation marks, the interpreter checks for things named `ab.cd` and
doesn't find anything:


~~~r
ab.cd
~~~
{:.input}
~~~
Error in eval(expr, envir, enclos): object 'ab.cd' not found
~~~
{:.output}

===

Question
: Is it better to use `'` or `"`?

Answer
: {:.fragment} Neither one is better. You will often encounter stylistic choices
like this, so if you don't have a personal preference try to mimic existing
styles.

===

You can expand the vocabulary known to the R interpreter by creating a new
**variable**. Using the symbol `<-` is referred to as assignment: the output of
any command to the right of `<-` gets the name given on its left.


~~~r
x <- seq(1, 50)
~~~
{:.input}

===

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

Assigning values to new variables (to the left of a `<-`) is the only time you
can reference something previously unknown to the interpreter. All other
commands must reference things already in the interpreter's vocabulary.
{:.notes}

===

Once assigned to a variable, a value becomes known to R and you can refer to it in other commands.


~~~r
y <- 'ab.cd'
typeof(y)
~~~
{:.input}
~~~
[1] "character"
~~~
{:.output}
