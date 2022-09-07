library(shiny)
library(rmarkdown)
library(markdown)
library(showtext)

# 구글 폰트를 showtext를 이용하여 바로 적용할 수 도 있습니다.
font_add_google("Nanum Pen Script", family = "nanumpen")
font_add_google("Noto Sans KR", family = "notosanskr")


shinyServer(function(input, output, session) {
    output$knitDoc <- renderUI({
        input$eval
        HTML(knitr::knit2html(text = isolate(input$rmd), fragment.only = TRUE, quiet = TRUE)) # nolint
    })

    output$report <- downloadHandler(
        # 보고서 글꼴은 등은 다음과 같이 반영할 수 있습니다.
        pandoc_param = c(
            "--variable", "mainfont=KoPubWorldBatang Medium",
            "--variable", "sansfont=KoPubWorldDotum Medium",
            "--variable", "linkcolor=cyan"
        ),
        pandoc_param = c("--variable", "RIDIBatang"),
        pandoc_param = c("--variable", "NanumGothic"),
        filename = "report.pdf",
        content = function(file) {
            tmp_file <- tempfile(fileext = ".Rmd")
            cat(input$rmd, file = tmp_file)
            rmarkdown::render(tmp_file,
                output_file = file,
                output_format = pdf_document(
                    toc = TRUE,
                    latex_engine = "xelatex",
                    pandoc_args = pandoc_param
                ),
                envir = new.env(parent = globalenv())
            )
        }
    )
})
