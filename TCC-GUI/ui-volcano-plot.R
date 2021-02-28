# ui-volcano-plot.R
fluidPage(fluidRow(column(
  3,
  shinydashboard::box(
    title = tagList(icon("cogs"), "Volcano Plot Parameters"),
    solidHeader = TRUE,
    status = "primary",
    width = NULL,
    uiOutput("valcanoParameter")
  ),
  shinydashboard::box(
    title = tagList(icon("code"), "Volcano Plot Code"),
    solidHeader = TRUE,
    status = "danger",
    collapsible = TRUE,
    collapsed = TRUE,
    width = NULL,
    verbatimTextOutput("runVolcanoPlot")
  )
),
column(
  9,
  shinydashboard::box(
    title = tagList(icon("line-chart"), "Volcano Plot"),
    solidHeader = TRUE,
    status = "info",
    width = NULL,
    uiOutput("volcanoUI")
  ),
  shinydashboard::box(
    title = tagList(icon("table"), "Result Table"),
    solidHeader = TRUE,
    status = "info",
    width = NULL,
    DT::dataTableOutput('resultTableInVolcanalPlot')
  )
)))