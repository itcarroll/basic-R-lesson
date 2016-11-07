
## What the *-lesson makefiles need to accomplish

1. git fetch upstream  # upstream is github.com/sesync-ci/lesson-style
1. git merge --no-edit upstream/master - abort if merge conflict
1. knit or pweave into docs/_slides # do i need to jekyll ignore _slides_Rmd?
1. git push  # origin is github.com/sesync-ci/*-lesson

## What the handouts makefile needs to accomplish

1. run all the *-lesson makefiles?
  1. clone/pull them all into a build/ area (so content must be from remote, not local)
  1. gitignore the build area
  1. then run their makefiles (maybe with push optional push while testing)
1. copy *-lesson/data into handouts/data
1. copy *-lesson/handout-x into handouts as lesson-#-x
1. keep this Makefile in a 'build' branch?

## Below is the build.R script before I began to modify it (build-temp.R) to take docs/_slides_Rmd into docs/_slides

require(knitr)
require(yaml)
require(stringr)

config = yaml.load_file("_config.yml")
render_markdown(fence_char = "~")
opts_knit$set(base.url = paste0(config$baseurl, "/"))
opts_chunk$set(
    comment = NA,
    fig.path = "images/",
    block_ial = c("{:.input}", "{:.output}"))

current_chunk = knit_hooks$get("chunk")
chunk = function(x, options) {
    x <- current_chunk(x, options)
    if (!is.null(options$title)) {
        x <- gsub("~~~(\n*$)",
                  paste0("~~~\n{:.text-document title=\"", options$title, "\"}\\1"),
                  x)
        return(x)
    }
    x <- gsub("~~~\n(\n+~~~)",
              paste0("~~~\n", options$block_ial[1], "\\1"),
              x)
    if (str_count(x, "~~~") > 2) {
        idx <- 2
    } else {
        idx <- 1
    }
    x <- gsub("~~~(\n*$)",
              paste0("~~~\n", options$block_ial[idx], "\\1"),
              x)
    return(x)
}
knit_hooks$set(chunk = chunk)

setwd("_slides")

for (f in config$slide_sorter) {
    knit(paste0(f, ".Rmd"))
}
