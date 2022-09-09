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

  # *. Rmd 파일 선택하여 텍스트 보여주기
  file_contents <- reactive(

    if(input$curriculum == "확률통계") {
      file_content <- readLines("www/stat.Rmd")
    } else {
      file_content <- readLines("www/test.Rmd")
    }
  )

  output$file_content_output <- renderUI({
      HTML(
        paste(
          c("<pre>", file_contents(), "</pre>"),
          collapse = "<br>"
        )
      )
  })

  # *. Rmd 편집기
  output$knitDoc <- renderUI({
    input$eval
    HTML(knitr::knit2html(text = isolate(input$rmd), fragment.only = TRUE, quiet = TRUE)) # nolint
  })

  # *. PDF 파일 생성
  output$report <- downloadHandler(
    filename = "report.pdf",
    content = function(file) {
      tmp_file <- tempfile(fileext = ".Rmd")
      cat(input$rmd, file = tmp_file)
      rmarkdown::render(tmp_file,
                        output_file = file,
                        output_format = pdf_document(
                          toc = TRUE,
                          latex_engine = "xelatex",
                          pandoc_args = c("--variable", "mainfont=NanumGothic")
                          # 보고서 글꼴은 등은 다음과 같이 반영할 수 있습니다.
                          # pandoc_args = c(
                          #     "--variable", "mainfont=KoPubWorldBatang Medium",
                          #     "--variable", "sansfont=KoPubWorldDotum Medium",
                          #     "--variable", "linkcolor=cyan"
                          # ),
                          # 도커를 통해 실행시 리디바탕체를 확인할 수 있습니다.
                          # pandoc_args = c("--variable", "mainfont=RIDIBatang"),
                        ),
                        envir = new.env(parent = globalenv())
      )
    }
  )
})
