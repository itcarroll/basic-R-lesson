## Editor

vals <- ...

vals <- seq(...,
            ...)

## Load Data

animals <- ...(file = ...)

animals <- read.csv(file = 'data/animals.csv', ...)

## Vectors

counts <- ...

## Factors

education <- ...(
  c("college", "highschool", "college", "middle", "middle"),
  ... = c("middle", "highschool", ...))

## Data Frames

... <- data.frame(...)

## Names

...(df) <- c(...)

## Subsetting ranges

days <- c(
  "Sunday", "Monday", "Tuesday", "Wednesday",
  "Thursday", "Friday", "Saturday")
weekdays <- ...
...

## Functions

function(...) {
  ...
  return(...)
}

## Flow Control

first <- function(dat) {
  ... {
    result <- dat[1]
  } ... {
    result <- dat[1, ]
  }
  return(result)
}

## Linear Models

fit <- ...(weight ~ hindfoot_length, animals)

fit <- lm(..., animals)