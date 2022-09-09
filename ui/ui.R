library(shiny)
library(gridlayout)
library(shinyAce)
library(rmarkdown)

markdown_text <- readLines("www/test.md")

ui <- shinyUI(
  fluidPage(
    includeCSS("www/writing.css"),
    titlePanel(
      fluidRow(
        column(6, img(height = 57, width = 57, src = "dw_logo.png"),
        column(6, "디지털 글쓰기", class = "pull-right")
        )
      )
    ),
    sidebarLayout(
      sidebarPanel(
        width = 2,
        h3("교과목"),
        selectInput("curriculum",
                    "글쓰기 분야",
                    choices = c("확률통계", "수학", "국어", "과학"))

      ),
      mainPanel(
        width = 10,
        column(
          6,
          h2("글쓰기 편집기"),
          aceEditor("rmd",
                    mode = "rmarkdown",
                    tabSize = 4,
                    useSoftTabs = TRUE,
                    value = markdown_text
          ),
          actionButton("eval", "Update"),
          downloadButton("report", "보고서")
        ),
        column(
          6,
          h2("미리 보기"),
          htmlOutput("knitDoc")
        )
      )
    ),
    div(
      class = "footer",
      includeHTML("www/footer.html")
    )
  )
)

