#!/bin/sh

Rscript -e "knitr::knit('index.Rmd')"
Rscript -e "knitr::knit('software.Rmd')"
Rscript -e "knitr::knit('experimental.Rmd')"
Rscript -e "knitr::knit('annotation.Rmd')"
