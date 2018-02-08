library(rmarkdown)
# from: https://stackoverflow.com/a/10969107/2886003
files <- list.files(pattern=".Rmd")
files <- c(files[3], files[-c(3, 6, 7)])
sapply(files, render)
