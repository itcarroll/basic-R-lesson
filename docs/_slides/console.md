---
---

## Console

The interpreter accepts commands interactively through the console.

===

Basic math, as you would type it on a calculator, is usually a valid command in the R language:



~~~r
> 1 + 2
~~~
{:.input title="Console"}


~~~
[1] 3
~~~
{:.output}




~~~r
> 4^2
~~~
{:.input title="Console"}


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
> seq(1, 100)
~~~
{:.input title="Console"}


~~~
  [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
 [18]  18  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34
 [35]  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51
 [52]  52  53  54  55  56  57  58  59  60  61  62  63  64  65  66  67  68
 [69]  69  70  71  72  73  74  75  76  77  78  79  80  81  82  83  84  85
 [86]  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100
~~~
{:.output}


===

The interpreter understands more than arithmatic operations.
That last command told it to use (or "call") the function `seq()`.

Most of "learning R" involves getting to know a whole lot of functions, the
effect of each function's  arguments (e.g. the input values `1` and `100`), and
what each function returns (e.g. the output vector).
{:.notes}

===

## R as Calculator

A good place to begin learning R is with its built-in mathematical functionality.

===

## Arithmatic operators

Try `+`, `-`, `*`, `/`, and `^` (for raising to a power).



~~~r
> 5/3
~~~
{:.input title="Console"}


~~~
[1] 1.666667
~~~
{:.output}


===

## Logical tests

Test equality with `==` and inequality with `<=`, `<`, `!=`, `>`, or `>=`.



~~~r
> 1/2 == 0.5
~~~
{:.input title="Console"}


~~~
[1] TRUE
~~~
{:.output}


===

## Math functions

Common mathematical functions like `sin`, `log`, and `sqrt`, exist along side some universal constants.



~~~r
> sin(2 * pi)
~~~
{:.input title="Console"}


~~~
[1] -2.449294e-16
~~~
{:.output}


===

## Programming idoms

Common computer programming functions like 'rep', 'sort', and 'range'



~~~r
> rep(2, 5)
~~~
{:.input title="Console"}


~~~
[1] 2 2 2 2 2
~~~
{:.output}


===

## Parentheses

Sandwiching something with `(` and `)` has two possible meanings.

===

Group sub-expressions by parentheses where needed.



~~~r
> (1 + 2) / 3
~~~
{:.input title="Console"}


~~~
[1] 1
~~~
{:.output}


===

Call functions by typing their name and comma-separated arguments between parentheses.



~~~r
> logb(2, 2)
~~~
{:.input title="Console"}


~~~
[1] 1
~~~
{:.output}

