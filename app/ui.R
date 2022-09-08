library(shinyAce)
library(rmarkdown)

markdown_text <- "# 디지털 글쓰기
마크다운 형식으로 글을 쓰며
R코드를 실행할 수 있습니다.

```{r}
2*3
rnorm(5)
```

그래픽 요소를 포함 할 수 도 있습니다.

```{r}
hist(rnorm(100))
```

이것이 진정한

`데이터과학` 디지털 글쓰기 입니다.
"


ui <- fluidPage(
    sidebarLayout(
        sidebarPanel(
            width = 2,
            h2("BitWriting"),
        ),
        mainPanel(
            width = 10,
            h2("Markdown Editor"),
            hr(),
            column(
                6,
                h2("R-Markdown Editor"),
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
    )
)
