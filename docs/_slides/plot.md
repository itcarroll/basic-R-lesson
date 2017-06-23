---
---

## Base plotting

R has excellent plotting capabilities for many types of graphics.
The `plot()` function is the most basic plotting function, and uses the data provided to determine what kind of plot to make. 

For more advanced plotting such as multi-faceted plots, the libraries [lattice](https://cran.r-project.org/package=lattice) and [ggplot2](https://cran.r-project.org/package=ggplot2) are excellent options. 

===

## Scatterplots

Providing plots with separate "x" and "y" coordinates produces a scatterplot.


~~~r
plot(surveys$hindfoot_length, surveys$weight)
~~~
{:.text-document title="{{ site.handouts }}"}

![plot of chunk unnamed-chunk-1]({{ site.baseurl }}/images/unnamed-chunk-1-1.png)

Using R's formula notation, as in `plot(weight ~ hindfoot_length, data = surveys)`, is a more readable syntax for some.

===

## Histograms

To plot binned counts of a single variable, use the `hist` function.


~~~r
hist(log(surveys$weight))
~~~
{:.text-document title="{{ site.handouts }}"}

![plot of chunk unnamed-chunk-2]({{ site.baseurl }}/images/unnamed-chunk-2-1.png)

===

## Boxplots

Use `boxplot` to compare the number of species seen each year.


~~~r
boxplot(log(weight) ~ year, data = surveys)
~~~
{:.text-document title="{{ site.handouts }}"}

![plot of chunk unnamed-chunk-3]({{ site.baseurl }}/images/unnamed-chunk-3-1.png)
