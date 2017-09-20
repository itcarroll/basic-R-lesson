---
---

## Exercise solutions

===

## Solution 1


~~~r
(-0.3 + sqrt(0.3 ^ 2 - 4 * 1.5 * -2.9)) / (2 * 1.5)
~~~
{:.input}
~~~
[1] 1.294035
~~~
{:.output}

[Return](#exercise-1)
{:.notes}

===

## Solution 2


~~~r
x <- list(3, 4, 5, 7)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
typeof(counts)
~~~
{:.input}
~~~
[1] "double"
~~~
{:.output}

~~~r
typeof(x)
~~~
{:.input}
~~~
[1] "list"
~~~
{:.output}

~~~r
typeof(c(counts, x))
~~~
{:.input}
~~~
[1] "list"
~~~
{:.output}

The variable `x` has a data type of `list`, so R does not restrict its elements to a particular type as it does for vectors. The result of combining a list and vector is a list, because the list is the more flexible data structure.

[Return](#exercise-2)
{:.notes}

===

## Solution 3


~~~r
species <- c('ape', 'bat', 'cat', 'dog')
abund <- 1:4
data <- data.frame(species, abund)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
str(data)
~~~
{:.input}
~~~
'data.frame':	4 obs. of  2 variables:
 $ species: Factor w/ 4 levels "ape","bat","cat",..: 1 2 3 4
 $ abund  : int  1 2 3 4
~~~
{:.output}

[Return](#exercise-3)
{:.notes}

<!--
===

## Solution 4


~~~r
animals <- read.csv('data/animals.csv', stringsAsFactors = FALSE, na.strings = '')
animals$sex <- factor(animals$sex)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
str(animals)
~~~
{:.input}
~~~
'data.frame':	35549 obs. of  9 variables:
 $ id             : int  2 3 4 5 6 7 8 9 10 11 ...
 $ month          : int  7 7 7 7 7 7 7 7 7 7 ...
 $ day            : int  16 16 16 16 16 16 16 16 16 16 ...
 $ year           : int  1977 1977 1977 1977 1977 1977 1977 1977 1977 1977 ...
 $ plot_id        : int  3 2 7 3 1 2 1 1 6 5 ...
 $ species_id     : chr  "NL" "DM" "DM" "DM" ...
 $ sex            : Factor w/ 2 levels "F","M": 2 1 2 2 2 1 2 1 1 1 ...
 $ hindfoot_length: int  33 37 36 35 14 NA 37 34 20 53 ...
 $ weight         : int  NA NA NA NA NA NA NA NA NA NA ...
~~~
{:.output}

[Return](#exercise-4)
{:.notes}
-->

===

## Solution 4


~~~r
sol1 <- days[c(-1, -7)]
sol2 <- days[seq(2, 7, 2)]
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
sol1
~~~
{:.input}
~~~
[1] "Monday"    "Tuesday"   "Wednesday" "Thursday"  "Friday"   
~~~
{:.output}


~~~r
sol2
~~~
{:.input}
~~~
[1] "Monday"    "Wednesday" "Friday"   
~~~
{:.output}

[Return](#exercise-4)
{:.notes}

<!--
===

## Solution 6


~~~r
first <- function(dat) {
    if (is.vector(dat)) {
        result <- dat[1]
    } else if (is.matrix(dat)) {
        result <- dat[1, 1]
    } else {
        result <- dat[1, ]
    }
    return(result)
}
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
m <- matrix(1:9, nrow = 3, ncol = 3)
first(m)
~~~
{:.input}
~~~
[1] 1
~~~
{:.output}

[Return](#exercise-6)
{:.notes}

===

## Solution 7


~~~r
animals.hl_model <- lm(log(hindfoot_length) ~ log(weight), data = animals)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
coef(animals.hl_model)[2]
~~~
{:.input}
~~~
log(weight) 
  0.3961338 
~~~
{:.output}


[Return](#exercise-8)
{:.notes}
-->

===

## Solution 5


~~~r
fit <- lm(hindfoot_length ~ weight * species_id, animals)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
summary(fit)
~~~
{:.input}
~~~

Call:
lm(formula = hindfoot_length ~ weight * species_id, data = animals)

Residuals:
     Min       1Q   Median       3Q      Max 
-24.0134  -0.6449   0.0519   0.7144  29.7848 

Coefficients:
                     Estimate Std. Error t value Pr(>|t|)    
(Intercept)         12.819706   0.881185  14.548  < 2e-16 ***
weight               0.020964   0.099647   0.210  0.83337    
species_idDM        19.878067   0.885692  22.444  < 2e-16 ***
species_idDO        20.320892   0.896080  22.678  < 2e-16 ***
species_idDS        32.082231   0.895996  35.806  < 2e-16 ***
species_idNL        16.814112   0.895635  18.773  < 2e-16 ***
species_idOL         6.469932   0.906738   7.135 9.86e-13 ***
species_idOT         6.436566   0.896637   7.179 7.20e-13 ***
species_idOX         5.949524   6.487854   0.917  0.35914    
species_idPB        11.555911   0.889542  12.991  < 2e-16 ***
species_idPE         5.930293   0.905705   6.548 5.93e-11 ***
species_idPF         1.476920   0.899021   1.643  0.10043    
species_idPH         9.421561   1.575405   5.980 2.25e-09 ***
species_idPI         8.373842   6.804910   1.231  0.21850    
species_idPL         6.383570   1.408950   4.531 5.90e-06 ***
species_idPM         5.937775   0.907084   6.546 6.00e-11 ***
species_idPP         7.368245   0.889413   8.284  < 2e-16 ***
species_idPX        16.180294  18.538880   0.873  0.38279    
species_idRF         4.028077   1.351396   2.981  0.00288 ** 
species_idRM         2.828061   0.891669   3.172  0.00152 ** 
species_idRO         6.371783   3.079506   2.069  0.03855 *  
species_idRX         0.513627   3.600336   0.143  0.88656    
species_idSF        12.199667   1.019254  11.969  < 2e-16 ***
species_idSH        12.083991   0.963573  12.541  < 2e-16 ***
species_idSO        10.806853   1.060554  10.190  < 2e-16 ***
weight:species_idDM  0.055372   0.099668   0.556  0.57852    
weight:species_idDO  0.029121   0.099701   0.292  0.77022    
weight:species_idDS  0.021381   0.099656   0.215  0.83012    
weight:species_idNL -0.004479   0.099652  -0.045  0.96415    
weight:species_idOL  0.018680   0.099870   0.187  0.85163    
weight:species_idOT  0.020726   0.099874   0.208  0.83560    
weight:species_idOX  0.055959   0.317826   0.176  0.86024    
weight:species_idPB  0.033628   0.099717   0.337  0.73594    
weight:species_idPE  0.046181   0.100101   0.461  0.64455    
weight:species_idPF  0.140474   0.102035   1.377  0.16861    
weight:species_idPH  0.092764   0.107858   0.860  0.38976    
weight:species_idPI  0.027423   0.363536   0.075  0.93987    
weight:species_idPL  0.022116   0.114392   0.193  0.84670    
weight:species_idPM  0.057366   0.100132   0.573  0.56671    
weight:species_idPP  0.070007   0.099883   0.701  0.48338    
weight:species_idPX -0.520964   0.978368  -0.532  0.59440    
weight:species_idRF  0.028946   0.124757   0.232  0.81653    
weight:species_idRM  0.054117   0.100441   0.539  0.59003    
weight:species_idRO -0.393305   0.300913  -1.307  0.19121    
weight:species_idRX  0.312369   0.238136   1.312  0.18962    
weight:species_idSF  0.007461   0.099955   0.075  0.94050    
weight:species_idSH  0.029670   0.099776   0.297  0.76619    
weight:species_idSO  0.014673   0.100138   0.147  0.88350    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 1.376 on 30690 degrees of freedom
  (4811 observations deleted due to missingness)
Multiple R-squared:  0.9792,	Adjusted R-squared:  0.9792 
F-statistic: 3.078e+04 on 47 and 30690 DF,  p-value: < 2.2e-16
~~~
{:.output}

[Return](#exercise-5)
{:.notes}
