library(shiny)

incrementButton <- function(inputID, value = 0) {
	tagList(
		singleton(tags$head(tags$script(src = "alert.js"))),
		tags$button(
			id=inputID,
			class="increment btn",			
			as.character(value)
		)
	)
}

# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
  
  tags$head(
    tags$link(rel = 'stylesheet', type = 'text/css', href = 'css/bootstrap.min.css')
  ),
  
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
	
	incrementButton("thisthis")
  ),

  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot")
	
  )
))
