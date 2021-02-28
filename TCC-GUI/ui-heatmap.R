# ui-heatmap.R

fluidPage(column(
  3,
  shinydashboard::box(
    title = tagList(icon("cogs"), "Heatmap Parameters"),
    width = NULL,
    solidHeader = TRUE,
    status = "primary",
    uiOutput("heatmapParameter")
  ),
  shinydashboard::box(
    title = tagList(icon("code"), "Heatmap R Code"),
    width = NULL,
    status = "danger",
    solidHeader = TRUE,
    collapsible = TRUE,
    collapsed = TRUE,
    verbatimTextOutput("heatmapRcode")
  )
),
column(
  9,
  shinydashboard::box(
    title = tagList(icon("th"), "Heatmap"),
    width = NULL,
    solidHeader = TRUE,
    status = "info", 
    footer = "It will be very time consuming if the number of genes is over hundred. Reduce the number by cutoff or wait patiently.",
    uiOutput("heatmapPlot")
  ),
  shinydashboard::box(
    title = tagList(icon("table"), "Listed Gene Information Table"),
    width = TRUE,
    solidHeader = TRUE,
    status = "info",
    DT::dataTableOutput("resultTableInHeatmap")
  )
))