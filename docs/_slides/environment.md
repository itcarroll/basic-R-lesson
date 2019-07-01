---
---

## Environment

In the RStudio IDE, the environment tab displays any variables added to R's
vocabulary in the current session. In a brand new session, the R interpreter
already recognizes many things, despite the environment being "empty".
{:.notes}

With an "empty" environment, the interpreter still recognizes:

- any number
- any string of characters
- nearly universal operators (e.g. `+` and `/`)
- operators specific to R (e.g. `$` and `%*%`)
- functions in "base R"

===

To reference a number or function just type it in as above.
To referece a string of characters, surround them in quotation marks.



~~~r
> 'ab.cd'
~~~
{:title="Console" .input}


~~~
[1] "ab.cd"
~~~
{:.output}


===

Without quotation marks, the interpreter checks for things in the environment
named `ab.cd` and doesn't find anything:



~~~r
> ab.cd
~~~
{:title="Console" .input}


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

## Assignment

You can expand the vocabulary known to the R interpreter by creating a new
**variable**. Using the symbol `<-` is referred to as assignment: the output of
any command to the right of `<-` gets the name given on its left.



~~~r
> x <- seq(0, 100)
~~~
{:title="Console" .input}


===

You'll notice that nothing prints to the console, because we assigned the output to a variable.
We can print the value of `x` by evaluating it without assignment.



~~~r
> x
~~~
{:title="Console" .input}


~~~
  [1]   0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 [18]  17  18  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33
 [35]  34  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50
 [52]  51  52  53  54  55  56  57  58  59  60  61  62  63  64  65  66  67
 [69]  68  69  70  71  72  73  74  75  76  77  78  79  80  81  82  83  84
 [86]  85  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100
~~~
{:.output}


Assigning values to new variables (to the left of a `<-`) is the only time you
can reference something previously unknown to the interpreter. All other
commands must reference things already in the interpreter's vocabulary.
{:.notes}

===

Once assigned to a variable, a value becomes known to R and you can refer to it in other commands.



~~~r
> plot(x, sin(x * 2 * pi / 100))
~~~
{:title="Console" .input}
![ ]({% include asset.html path="images/environment/unnamed-chunk-5-1.png" %})
{:.captioned}

===

The environment is dynamic, but under your control!

- Variables do not persist between sessions (unless loaded from .Rdata)
- Variables only change their value on re-assignment
