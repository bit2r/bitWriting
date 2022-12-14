################################################
## *. 패키지
################################################

library(shiny)
library(gridlayout)
library(shinyAce)
library(rmarkdown)
library(shinyjs)
library(sass)

################################################
## *. CSS
################################################

sass(
  sass_file(glue::glue("{here::here()}/ui/www/quarto.scss")),
  output = glue::glue("{here::here()}/ui/www/quarto.css")
)

################################################
## *. RMD
################################################

stat_text <- readLines("www/stat.Rmd")
math_text <- readLines("www/math.Rmd")
