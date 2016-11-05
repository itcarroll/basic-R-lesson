
## What the *-lesson makefiles need to accomplish

1. git fetch upstream  # upstream is github.com/sesync-ci/lesson-style
1. git merge --no-edit upstream/master - abort if merge conflict
1. knit or pweave into docs/_slides # do i need to jekyll ignore _slides_Rmd?
1. git push  # origin is github.com/sesync-ci/*-lesson

## What the lesson-style makefile needs to accomplish

1. run all the *-lesson makefiles?
  1. clone/pull them all into a build/ area (so content must be from remote, not local)
  1. then run their makefiles (maybe with optional push for testing)
1. somehow handle the work of assiging numbers to lessons?
  1. not to mention, getting the lesson handout and data together into handouts repo with subtree merge
  1. so maybe this is the job of the handouts repo makefile?

## Below is the build.R script that needs to be modified to take docs/_slides_Rmd into docs/_slides

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
