
ui <- navbarPage(
  tags$head(
    tags$link(href = "quarto.css", rel = "stylesheet", type = "text/css")
  ),
  title = "디지털 글쓰기",
  tabPanel("확률통계",
     fluidPage(
         mainPanel(
           column(
             6,
             h2("글쓰기 편집기"),
             aceEditor("stat_rmd",
                       mode = "rmarkdown",
                       tabSize = 4,
                       useSoftTabs = TRUE,
                       value = stat_text
             ),
             actionButton("stat_eval", "미리보기"),
             downloadButton("stat_report", "보고서")
           ),
           column(
             6,
             h2("미리 보기"),
             htmlOutput("stat_doc")
           )
         )
       )
  ),
  tabPanel("수학",
     fluidPage(
       mainPanel(
         column(
           6,
           h2("글쓰기 편집기"),
           aceEditor("math_rmd",
                     mode = "rmarkdown",
                     tabSize = 4,
                     useSoftTabs = TRUE,
                     value = math_text
           ),
           actionButton("math_eval", "미리보기"),
           downloadButton("math_report", "보고서")
         ),
         column(
           6,
           h2("미리 보기"),
           htmlOutput("math_doc")
         )
       )
     )
  ),
  tabPanel("국어", "korean"),
  navbarMenu("사회 & 과학",
             tabPanel("지리", "geospatial"),
             tabPanel("물리", "physics"),
             tabPanel("사회경제", "social")
  ),
  inverse = TRUE
)

