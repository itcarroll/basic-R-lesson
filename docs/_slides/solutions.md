---
---

## Exercise solutions

<!--
===

## Solution 1

First solution:


~~~r
(-0.3 + sqrt(0.3 ^ 2 - 4 * 1.5 * -2.9)) / (2 * 1.5)
~~~

~~~
[1] 1.294035
~~~
{:.text-document title="{{ site.handouts }}"}

Second solution:


~~~r
(-0.3 - sqrt(0.3 ^ 2 - 4 * 1.5 * -2.9)) / (2 * 1.5)
~~~

~~~
[1] -1.494035
~~~
{:.text-document title="{{ site.handouts }}"}

[Return](#exercise-1)
{:.notes}
-->

===

## Solution 1


~~~r
x <- list(1, list(2, 3))
y <- c(1, list(2, 3))
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
str(x)
~~~
{:.input}
~~~
List of 2
 $ : num 1
 $ :List of 2
  ..$ : num 2
  ..$ : num 3
~~~
{:.output}

~~~r
str(y)
~~~
{:.input}
~~~
List of 3
 $ : num 1
 $ : num 2
 $ : num 3
~~~
{:.output}

The variable `x` contains two elements, a number and a list. The variable `y` has concatenation of the two arguments, coerced to the more flexible of the two (a list is more flexible than a number). Both `x` and `y` are lists.

[Return](#exercise-2)
{:.notes}

===

## Solution 2


~~~r
species <- c()
abund <- c()
data <- data.frame(species, abund)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
str(data)
~~~
{:.input}
~~~
'data.frame':	0 obs. of  0 variables
~~~
{:.output}

[Return](#exercise-3)
{:.notes}

===

## Solution 3


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

===

## Solution 4


~~~r
sol5a <- days[c(-1, -7)]
sol5b <- days[seq(2, 7, 2)]
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
sol5a
~~~
{:.input}
~~~
[1] "Monday"    "Tuesday"   "Wednesday" "Thursday"  "Friday"   
~~~
{:.output}


~~~r
sol5b
~~~
{:.input}
~~~
[1] "Monday"    "Wednesday" "Friday"   
~~~
{:.output}

[Return](#exercise-5)
{:.notes}

<!--
===

## Solution 7


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

[Return](#exercise-7)
{:.notes}

===

## Solution 8


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

<aside class="notes" markdown="block">
[Return](#exercise-8)
</aside>
-->

===

## Solution 5


~~~r
hl_model <- lm(hindfoot_length ~ log(weight) * species_id, data = animals)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
summary(hl_model)
~~~
{:.input}
~~~

Call:
lm(formula = hindfoot_length ~ log(weight) * species_id, data = animals)

Residuals:
     Min       1Q   Median       3Q      Max 
-24.0566  -0.6536   0.0456   0.7234  29.7702 

Coefficients:
                         Estimate Std. Error t value Pr(>|t|)    
(Intercept)               12.7858     2.1240   6.020 1.77e-09 ***
log(weight)                0.1006     0.9932   0.101 0.919307    
species_idDM              11.9327     2.1438   5.566 2.63e-08 ***
species_idDO              14.3676     2.1935   6.550 5.84e-11 ***
species_idDS              17.7785     2.2183   8.015 1.14e-15 ***
species_idNL               7.8180     2.2269   3.511 0.000448 ***
species_idOL               3.8329     2.2205   1.726 0.084326 .  
species_idOT               3.9959     2.1768   1.836 0.066421 .  
species_idOX               2.8502    19.2255   0.148 0.882145    
species_idPB               7.7369     2.1607   3.581 0.000343 ***
species_idPE               2.7944     2.2052   1.267 0.205104    
species_idPF               0.1775     2.1608   0.082 0.934532    
species_idPH               0.3679     4.6568   0.079 0.937035    
species_idPI               6.7215    19.7938   0.340 0.734180    
species_idPL               5.5096     3.3721   1.634 0.102294    
species_idPM               3.3929     2.1991   1.543 0.122874    
species_idPP               4.3321     2.1504   2.015 0.043963 *  
species_idPX              34.6473    54.3637   0.637 0.523918    
species_idRF               2.7435     3.4223   0.802 0.422754    
species_idRM               1.5570     2.1465   0.725 0.468236    
species_idRO              11.3148     6.9792   1.621 0.104982    
species_idRX              -7.8187     9.0769  -0.861 0.389032    
species_idSF               3.0692     3.2602   0.941 0.346492    
species_idSH               0.8047     2.5495   0.316 0.752296    
species_idSO               6.0981     2.9040   2.100 0.035746 *  
log(weight):species_idDM   2.9055     0.9962   2.917 0.003541 ** 
log(weight):species_idDO   2.0768     1.0032   2.070 0.038436 *  
log(weight):species_idDS   3.9753     1.0022   3.967 7.31e-05 ***
log(weight):species_idNL   2.2186     1.0020   2.214 0.026832 *  
log(weight):species_idOL   1.0443     1.0110   1.033 0.301634    
log(weight):species_idOT   0.9991     1.0045   0.995 0.319923    
log(weight):species_idOX   1.4617     6.3414   0.231 0.817702    
log(weight):species_idPB   1.5264     0.9998   1.527 0.126857    
log(weight):species_idPE   1.4128     1.0119   1.396 0.162681    
log(weight):species_idPF   1.1727     1.0116   1.159 0.246392    
log(weight):species_idPH   3.5936     1.5661   2.295 0.021763 *  
log(weight):species_idPI   0.7853     6.7317   0.117 0.907135    
log(weight):species_idPL   0.4921     1.3354   0.368 0.712515    
log(weight):species_idPM   1.3015     1.0107   1.288 0.197849    
log(weight):species_idPP   1.5413     1.0003   1.541 0.123355    
log(weight):species_idPX  -9.5918    18.4815  -0.519 0.603767    
log(weight):species_idRF   0.6685     1.4342   0.466 0.641130    
log(weight):species_idRM   0.7976     1.0019   0.796 0.426004    
log(weight):species_idRO  -3.8730     3.0337  -1.277 0.201735    
log(weight):species_idRX   4.9175     3.4007   1.446 0.148179    
log(weight):species_idSF   2.6055     1.1681   2.231 0.025712 *  
log(weight):species_idSH   3.4480     1.0472   3.292 0.000994 ***
log(weight):species_idSO   1.6095     1.1125   1.447 0.147980    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 1.375 on 30690 degrees of freedom
  (4811 observations deleted due to missingness)
Multiple R-squared:  0.9793,	Adjusted R-squared:  0.9792 
F-statistic: 3.085e+04 on 47 and 30690 DF,  p-value: < 2.2e-16
~~~
{:.output}

[Return](#exercise-8)
{:.notes}
