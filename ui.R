library(shiny)
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
            includeHTML("www/simple.html")
        )
    )
)
