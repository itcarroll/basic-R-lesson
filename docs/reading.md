---
layout: default
style: /css/static.css
---

## Block programming and R implementation

Block programming is a method of learning the principles of coding via a visual 
interface.  Learners drag and drop blocks of instructions into the order they
want them to be executed.  This allows the learner to build logical thinking, 
create conditional statements, and learn debugging, all without having to
learn a programming language.  It is a jumping off point for learning a 
scripting language such as R.  

For example, the following instructions can be put together into a code chunk:

1. let `my variable` refer to a real integer
2. let `if` condition test less than 10
3. if `my variable` statisfies the `if` condition, add two to `my variable`
4. print `my variable`
5. if `my variable` does not satisfy the `if` condition, set `my variable` to 100 
6. print `my variable`

The following is a script in the R programming language
that implements the instructions above.

```r
my_variable <- sample(1:20, 1)

if(my_variable < 10){
my_variable <- my_variable + 2
print(my_variable)
}else{
my_variable <- 100
print(my_variable)
}


```
{:.input title="Console"}

If you understand the instructions above, then you know what the R code is
accomplishing even though you can't read the R language. However, you can
probably deduce what a lot of it is doing!

- What do you think the combination of characters `<-` means? What about the pattern `{...}`?

- Which step is implemented by the `if (...) {...}` block?

- What is the role of `my_variable`?

## Block programming Exercise 1

Go to the block programming platform [Scratch](https://scratch.mit.edu/projects/editor/?tutorial=getStarted) 
and use the instructions above to assemble a code chunk.  See if you can create another program that 
does another task.

## Block programming Exercise 2

Complete the following instructions to test whether a given
integer is even or odd. Assume you can use a pre-existing capability to round
any number to its nearest integer, as well as the arithmatic operators `*` and
`/`.  

1. let `i` refer to a given integer
2. if `i` is less than zero, let `i` refer to `-1 * i`  
...

<!--
```r
test_value <- 98
is_even <- function(x) {
    output <- FALSE
    if (x != round(x)) {
        warning('Please input an integer.')
    } else {
        y <- round(x / 2)
        if (x == y * 2) {
            output <- TRUE
        }
    }
    return(output)
}
if (!evenness(test_value)) {
    warning('Test failed.')
}
```
{:.input title="Console"}
-->
<!--
## Pseudo-code Exercise 3

Refer back to the bubble-sort algorithm. Step 7 says to "swap" elements of an
array, but in the implementation that takes 3 lines of code including creation
of a dummy variable. The implementation would be easier to read (since we, the
reader, already understand what "swap" means) and "modular" if we replaced those
lines with a `swap` function defined outside the loops.

Just using what you can infer from the pseudo-code and R code above, what would
you replace each `...` with below to improve our bubble-sort implementation.

```r
swap <- function(j, x) {
  ...
  return(x)
}

n <- length(A)
swapped <- TRUE
while (swapped) {
    swapped <- FALSE
    for (i in seq(1, n - 1)) {
        if (A[i+1] < A[i]) {
            ...
            swapped <- TRUE
        }
    }
}
```
{:.input title="Console"} -->

---