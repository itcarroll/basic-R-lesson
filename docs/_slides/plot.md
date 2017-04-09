---
---

## Base plotting

R has excellent plotting capabilities for many types of graphics. The `plot()` function is the most basic plotting function. It is polymorphic, ie. it uses the information you give it to determine what kind of plot to make. 

For more advanced plotting such as multi-faceted plots, the libraries lattice and ggplot2 are excellent options. 

===

## Scatterplots

The basic syntax is `plot(x, y)` or use the formula notation `plot(y ~ x)`


~~~r
plot(surveys$month, surveys$weight)
~~~
{:.text-document title="{{ site.handouts }}"}

![plot of chunk unnamed-chunk-1]({{ site.baseurl }}/images/unnamed-chunk-1-1.png)

===

## Histograms


~~~r
hist(log(surveys$weight))
~~~
{:.text-document title="{{ site.handouts }}"}

![plot of chunk unnamed-chunk-2]({{ site.baseurl }}/images/unnamed-chunk-2-1.png)

===

## Boxplots

Use a boxplot to compare the number of species seen each year.


~~~r
boxplot(log(surveys$weight) ~ surveys$year)
~~~
{:.text-document title="{{ site.handouts }}"}

![plot of chunk unnamed-chunk-3]({{ site.baseurl }}/images/unnamed-chunk-3-1.png)
