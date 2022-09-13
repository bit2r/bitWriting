# 마크다운 콘텐츠 변환
# https://stackoverflow.com/questions/56860382/r-shinyace-non-reactive-checkboxinput

markdown_text <- ""

mark_editor <- aceEditor(
    outputId = "rmd",
    mode = "rmarkdown",
    tabSize = 4,
    autoComplete = "live",
    autoCompleters = "keyword",
    useSoftTabs = TRUE,
    value = markdown_text
)

mark_preview <- htmlOutput("knit_doc")


ui <- shinyUI(
    fluidPage(
        shinyjs::useShinyjs(),
        includeCSS("www/writing.css"),
        titlePanel(
            fluidRow(
                column(
                    6, img(height = 57, width = 57, src = "dw_logo.png"),
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
                    choices = c("선택하세요!", "확률통계", "수학", "국어")
                )
            ),
            mainPanel(
                column(
                    6,
                    h2("R-Markdown Editor"),
                    mark_editor,
                    # actionButton("eval", "Update"),
                    downloadButton("report", "보고서")
                    # uiOutput("file_content_output")
                ),
                column(
                    6,
                    h2("미리 보기"),
                    mark_preview
                )
            )
        ),
        div(
            class = "footer",
            includeHTML("www/footer.html")
        )
    ) # fluidPage
)
