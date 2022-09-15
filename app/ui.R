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
    fontSize = 14,
    debounce = 1000,
    value = markdown_text
)

mark_preview <- htmlOutput("knit_doc")

title_panel <- titlePanel(
    fluidRow(
        column(
            6, img(height = 57, width = 57, src = "dw_logo.png"),
            column(6, "디지털 글쓰기", class = "pull-right")
        )
    )
)

sidebar_panel <- sidebarPanel(
    width = 2,
    h3("교과목"),
    selectInput("curriculum",
        "글쓰기 분야",
        choices = c("선택하세요!", "확률통계", "수학", "국어")
    )
)

main_panel <- mainPanel(
    column(
        6,
        mark_preview
    ),
    column(
        6,
        h2("편집기"),
        downloadButton("report", "보고서"),
        # uiOutput("file_content_output")
        # actionButton("eval", "Update"),
        mark_editor
    )
)

header <- div()
footer <- div(
    class = "footer",
    includeHTML("www/footer.html")
)


markdown_fluid_row <- fluidRow(
    column(
        6,
        mark_preview
    ),
    column(
        6,
        downloadButton("report", "보고서"),
        mark_editor
    )
)

fluid_page <- fluidPage(
    shinyjs::useShinyjs(),
    includeCSS("www/writing.css"),
    title_panel,
    sidebarLayout(
        sidebar_panel,
        main_panel
    ),
    footer
)

ui <- shinyUI(
    fluid_page
)
