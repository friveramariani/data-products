# Mtcars Dataset kmeans clustering app

palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
  "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))

library(shiny)

ui <- fluidPage(
  headerPanel('MtCars Dataset k-means Clustering'),
  "This is a Shiny App that used the mtcars dataset to visualize graphically the relationship Motor Card Trernd variables.", 
  "This Shiny app allows to evaluate the relationship between the following variables:",
  "mpg (miles/gallon), cyl (# of cylinders), disp (displacement), hp (horsepower), drat (rear axel ratio)",
  "wt (weight), qsec (1/4 mile time), vs (V-engine or Straight engine), carb (# of carburetors), am (type of transmission), gear (# of gears).", 
  sidebarPanel(
    selectInput('xcol', 'Select the X Variable', names(mtcars)),
    selectInput('ycol', 'Select the Y Variable', names(mtcars),
      selected = names(mtcars)[[2]]),
    numericInput('clusters', 'Number of Clusters on the Plot', 3,
      min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
)

server <- function(input, output) {

  mtcarsData <- reactive({
    mtcars[, c(input$xcol, input$ycol)]
  })

  clusters <- reactive({
    kmeans(mtcarsData(), input$clusters)
  })

  output$plot1 <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(mtcarsData(),
         col = clusters()$cluster,
         pch = 18, cex = 2)
  })

}

shinyApp(ui = ui, server = server)
