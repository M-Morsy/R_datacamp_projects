#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$Phyllotaxis <- renderPlot({
    angle <- as.numeric(input$bins) * pi / 180
    points <- 2000
    
    t <- (1:points)*angle
    x <- sin(t)
    y <- cos(t)
    
    df <- data.frame(t, x, y)
    
    p <- ggplot(df, aes(x*t, y*t))
    p + geom_point(size = 80, alpha = 0.1, shape=1, color = input$col) +
      theme(panel.background = element_rect(fill = "white", colour = "darkmagenta"),
            title =  element_blank(), axis.ticks =  element_blank(),
            axis.text =  element_blank(), panel.grid =element_blank(),
            legend.position = "none")
  
    
  })
  
})
