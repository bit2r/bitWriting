library(shinyAce)
library(rmarkdown)

init <- "---
output:
  pdf_document:
    latex_engine: xelatex
mainfont: NanumGothic
---
### Sample knitr Doc
마크다운 문장이로 이루어진 것으로
R코드를 실행할 수 있습니다.

```{r}
2*3
rnorm(5)
```

그래픽 요소를 포함 할 수 도 있습니다.

```{r}
hist(rnorm(100))
```
"


ui <- fluidPage(
    sidebarLayout(
        sidebarPanel(
            width = 3,
            h2("study"),
            a(h4("writing"),
                href = "#rmarkdown"
            ),
            hr(),
        ),
        mainPanel(
            width = 9,
            h2("Markdown Editor"),
            hr(),
            column(
                6,
                h2("Source R-Markdown"),
                aceEditor("rmd", mode = "rmarkdown", value = init),
                actionButton("eval", "Update"),
                downloadButton("report", "보고서")
            ),
            column(
                6,
                h2("Knitted Output"),
                htmlOutput("knitDoc")
            )
        )
    )
)
