library(shiny)
library(rmarkdown)
library(markdown)
library(showtext)
library(dplyr)

# 구글 폰트를 showtext를 이용하여 바로 적용할 수 도 있습니다.
# 네트워크 상태에 따라 다운로드가 안되는 경우도 있습니다.
# font_add_google("Nanum Pen Script", family = "nanumpen")
# font_add_google("Noto Sans KR", family = "notosanskr")


shinyServer(function(input, output, session) {

  # *. 확률통계 ---------------------------
  ## *. Rmd 편집기
  output$stat_doc <- renderUI({
    input$stat_eval
    HTML(knitr::knit2html(text = isolate(input$stat_rmd), fragment.only = TRUE, quiet = TRUE)) # nolint
  })

  ## *. PDF 파일 생성
  output$stat_report <- downloadHandler(
    filename = "report/stat_report.pdf",
    content = function(file) {
      tmp_file <- tempfile(fileext = ".Rmd")
      cat(input$rmd, file = tmp_file)
      rmarkdown::render(tmp_file,
                        output_file = file,
                        output_format = pdf_document(
                          toc = TRUE,
                          latex_engine = "xelatex",
                          pandoc_args = c("--variable", "mainfont=NanumGothic")
                        ),
                        envir = new.env(parent = globalenv())
      )
    }
  )

  # *. 수학 ---------------------------
  ## *. Rmd 편집기
  output$math_doc <- renderUI({
    input$stat_eval
    HTML(knitr::knit2html(text = isolate(input$math_rmd), fragment.only = TRUE, quiet = TRUE)) # nolint
  })

  ## *. PDF 파일 생성
  output$stat_report <- downloadHandler(
    filename = "report/math_report.pdf",
    content = function(file) {
      tmp_file <- tempfile(fileext = ".Rmd")
      cat(input$rmd, file = tmp_file)
      rmarkdown::render(tmp_file,
                        output_file = file,
                        output_format = pdf_document(
                          toc = TRUE,
                          latex_engine = "xelatex",
                          pandoc_args = c("--variable", "mainfont=NanumGothic")
                        ),
                        envir = new.env(parent = globalenv())
      )
    }
  )
})
