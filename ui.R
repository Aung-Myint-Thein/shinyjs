library(shiny)



# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(

  incrementButton <- function(b1, value = 0) {
  tagList(
    singleton(tags$head(tags$script(src = "js/increment.js"))),
    tags$button(id = b1,
                class = "increment btn",
                type = "button",
                as.character(value))
  )
}

  # Application title
  headerPanel("Hello Shiny!"),

  # Sidebar with a slider input for number of observations
  sidebarPanel(
    sliderInput("obs", 
                "Number of observations:", 
                min = 0, 
                max = 1000, 
                value = 500)
	,
	actionButton("b1","0")
  ),

  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot")
  )
))
