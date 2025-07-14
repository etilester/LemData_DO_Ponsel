packages <- c("plotly", "tidyverse", "here", "knitr", "kableExtra", "readr", "lubridate", "conflicted")

install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg, repos = "https://cloud.r-project.org/")
  }
}

lapply(packages, install_if_missing)
