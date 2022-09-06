library(shiny)
library(rmarkdown)
library(markdown)

shinyServer(function(input, output, session) {
    output$knitDoc <- renderUI({
        input$eval
        HTML(knitr::knit2html(text = isolate(input$rmd), fragment.only = TRUE, quiet = TRUE)) # nolint
    })

    output$report <- downloadHandler(
        filename = "report.pdf",
        content = function(file) {
            tmp_file <- tempfile(fileext = ".Rmd")
            cat(input$rmd, file = tmp_file)
            rmarkdown::render(tmp_file,
                output_file = file,
                envir = new.env(parent = globalenv())
            )
        }
    )
})
