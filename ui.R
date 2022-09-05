library(shinyAce)
library(rmarkdown)

init <- "### Sample knitr Doc

This is some markdown text. It may also have embedded R code
which will be executed.

```{r}
2*3
rnorm(5)
```

It can even include graphical elements.

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
                href = "#birds"
            ),
            hr(),
            a(h4("study"),
                href = "https://en.wikipedia.org/wiki/Main_Page",
                target = "blank"
            )
        ),
        mainPanel(
            width = 9,
            h2("Markdown Editor"),
            hr(),
            column(
                6,
                h2("Source R-Markdown"),
                aceEditor("rmd", mode = "rmarkdown", value = init),
                actionButton("eval", "Update")
            ),
            column(
                6,
                h2("Knitted Output"),
                htmlOutput("knitDoc")
            )
        )
    )
)
