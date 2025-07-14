# Set CRAN mirror explicitly (important for CI environments)
options(repos = c(CRAN = "https://cloud.r-project.org"))

# List of required packages
packages <- c(
  "tidyverse", "plotly", "here", "knitr",
  "kableExtra", "readr", "lubridate", "conflicted"
)

# Install any packages that are missing
install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    message("Installing package: ", pkg)
    install.packages(pkg)
  }
}

# Apply installation function
invisible(lapply(packages, install_if_missing))
