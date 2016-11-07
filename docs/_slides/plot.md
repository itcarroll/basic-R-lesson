---
---

## Base plotting

R has excellent plotting capabilities for many types of graphics. The `plot()` function is the most basic plotting function. It is polymorphic, ie. it uses the information you give it to determine what kind of plot to make. 

For more advanced plotting such as multi-faceted plots, the libraries lattice and ggplot2 are excellent options. 

===

## Scatterplots

basic syntax is `plot(x, y)` or uses the formula notation `plot(y ~ x)`



~~~r
plot(surveys$month, surveys$weight)
~~~

![plot of chunk basic](/images/basic-1.png)

~~~r
plot(surveys$year, surveys$weight)
~~~

![plot of chunk basic](/images/basic-2.png)

~~~r
plot(surveys$year, log(surveys$weight))
~~~

![plot of chunk basic](/images/basic-3.png)

===

## Histograms


~~~r
hist(surveys$weight)
~~~

![plot of chunk hist](/images/hist-1.png)

~~~r
hist(log(surveys$weight))
~~~

![plot of chunk hist](/images/hist-2.png)

===

## Boxplots

> Use a boxplot to compare the number of species seen each year. 


~~~r
par(mfrow=c(1,1))
boxplot(surveys$weight ~ surveys$year)
~~~

![plot of chunk box](/images/box-1.png)

~~~r
boxplot(surveys$weight ~ surveys$month)
~~~

![plot of chunk box](/images/box-2.png)

~~~r
boxplot(log(surveys$weight) ~ surveys$year)
~~~

![plot of chunk box](/images/box-3.png)

===

## Graphical parameters

par()

* adjust line types, plotting characters, cex, x and y labels
* plot different factors/types in different colors

Multi-panel plots can be made by changing the graphical parameters with the `par()` function. 


~~~r
surveys1990 <- subset(surveys, year == 1990)
surveys1996 <- subset(surveys, year == 1996)

par(mfrow=c(1,2))
hist(log(surveys1990$weight))
hist(log(surveys1996$weight))
~~~

![plot of chunk par](/images/par-1.png)
