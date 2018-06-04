library(shiny)
library(colourpicker)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Phyllotaxis shapes"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      textInput("bins", label = "enter a random number within 1 to 100" ,
                value = "19"),
      h1("Pick a color"),
      color <- colourInput("col", NULL, "Turquoise"),
      submitButton(text = "Apply Changes", icon = NULL, width = NULL)
    ),
   
    # Show a plot of the generated distribution
    mainPanel(
       h1("Phyllotaxis"),
       plotOutput("Phyllotaxis")
    )
  )
))
