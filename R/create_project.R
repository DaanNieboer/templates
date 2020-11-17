#' This package contains a template for a statistical analysis project.
#'
#' It's callback is at: inst/rstudio/templates/project/create_project.dcf
#'
#' @export

create_project <- function(path, ...){
  dir.create(path,  recursive = TRUE, showWarnings = FALSE)
  setwd(file.path(getwd(), path))

  dir.create("data/raw", recursive = TRUE, showWarnings = FALSE)
  dir.create("data/processed", recursive = TRUE, showWarnings = FALSE)
  dir.create("output/figures", recursive = TRUE, showWarnings = FALSE)
  dir.create("output/tables", recursive = TRUE, showWarnings = FALSE)
  dir.create("src", recursive = TRUE, showWarnings = FALSE)
  dir.create("markdown", recursive = TRUE, showWarnings = FALSE)

  dots <- list(...)

  if(dots[["createGitignore"]]){
    git_ignores <- c('*.Rhistory',
                     '*.Rapp.history',
                     '*.Rdata',
                     '*.Ruserdata',
                     '*Rproj.user/',
                     '.Renviron')
    writeLines(paste(git_ignores, sep = "\n"), '.gitignore')
  }

}
