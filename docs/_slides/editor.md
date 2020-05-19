---
---

## Editor

The **console** is for evaluating commands you don't intend to keep or reuse.
It's useful for testing commands and poking around. The **environment**
represents the state of a current session. The **editor** reads and writes
files--it is where you head to compose your R scripts.

R scripts are simple text files that contain code you intend to run again and
again; code to process data, perform analyses, produce visualizations, and even
generate reports. The editor and console work together in the RStudio IDE, which
gives you multiple ways to send parts of the script you are editing to the
console for immediate evaluation. Alternatively you can "source" the entire
script or run it from a shell with `Rscript`.
{:.notes}

===

Open up "{{ site.data.lesson.handouts[0] }}" in the editor, and follow along by
replacing the `...` placeholders with the code here. Then evalute just this line
(Ctrl+Enter on Windows, ⌘+Enter on macOS)



~~~r
vals <- seq(1, 100)
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .text-document}


===

Our call to the function `seq` could have been much more explicit. We could give
the arguments by the names that `seq` is expecting.



~~~r
vals <- seq(from = 1,
  to = 100)
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .text-document}


===

Run that code by moving your cursor anywhere within those two lines and clicking
"Run", or by using the keyboard shortcut Ctrl-Return or ⌘ Return.

===

Question
: What's an advantage of naming arguments?

Answer
: {:.fragment} One advantage is that you can put them in any order. A related
advantage is that you can then skip some arguments, which is fine to do if each
skipped argument has a default value. A third advantage is code readability,
which you should always be conscious of while writing in the editor.

===

## Readability

Code readability in the editor cuts both ways: sometimes verbosity is useful,
sometimes it is cumbersome.

===

The `seq()` function has an alternative form available when only the `from` and
`to` arguments are needed.



~~~r
> 1:100
~~~
{:title="Console" .input}


~~~
  [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18
 [19]  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36
 [37]  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52  53  54
 [55]  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71  72
 [73]  73  74  75  76  77  78  79  80  81  82  83  84  85  86  87  88  89  90
 [91]  91  92  93  94  95  96  97  98  99 100
~~~
{:.output}


The `:` operator should be used whenever possible because it replaces a common,
cumbersome function call with an brief, intuitive syntax. Likewise, the `assign`
function duplicates the functionallity of the `<-` symbol, but is never used
when the simpler operator will suffice.
{:.notes}

===

## Function documentation

How would you get to know these properties and the names of a function's
arguments?



~~~r
> ?seq
~~~
{:title="Console" .no-eval .input}


===

How would you even know what function to call?



~~~r
> ??sequence
~~~
{:title="Console" .no-eval .input}

