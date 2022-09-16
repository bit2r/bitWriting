################################################
## *. 패키지
################################################
# attach packages to the search path, installing them from CRAN or GitHub if needed
librarian::shelf(
    shiny,
    shinyAce,
    shinyjs,
    rmarkdown,
    markdown,
    dplyr,
    sass,
    rstudio / gridlayout,
    rstudio / learnr
)
# devtools::install_github("rstudio/gridlayout")
# devtools::install_github("rstudio/learnr")

# library(shiny)
# library(gridlayout)
# library(shinyAce)
# library(rmarkdown)
# library(shinyjs)
# library(markdown)
# library(dplyr)
# library(sass)
# library(bootstraplib)

################################################
## *. CSS
################################################

sass(
    sass_file(glue::glue("{here::here()}/www/quarto.scss")),
    output = glue::glue("{here::here()}/www/quarto.css")
)

################################################
## *. RMD
################################################

stat_text <- readLines("www/stat.Rmd")
math_text <- readLines("www/math.Rmd")
