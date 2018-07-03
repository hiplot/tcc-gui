# ui-heatmap.R

fluidPage(column(3,
                 tags$hr(),
                 wellPanel(
                   tags$h4("Heatmap Parameters"),
                   tags$hr(),
                   uiOutput("heatmapParameter")
                 )),
          column(9,
                 tags$hr(),
                 withBarsUI(plotlyOutput("heatmap"))))