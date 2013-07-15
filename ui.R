library(shiny)

incrementButton <- function(inputID, value = 0) {
	tagList(
		singleton(tags$head(tags$script(src = "alert.js"),tags$link(rel = 'stylesheet', type = 'text/css', href = 'css/bootstrap.css'))),
		tags$button(
			id=inputID,
			class="increment btn btn-primary",			
			as.character(value)
		)
	)
}

# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
  
  #head(tags$script(src = "alert.js"),tags$link(rel = 'stylesheet', type = 'text/css', href = 'css/bootstrap.css')),
  
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
    plotOutput("distPlot"),
	HTML('<div><a href="#" id="tooltip" data-toggle="tooltip" title="tooltip message will be here.">hover over me</a></div>'),
	HTML('<a href="#" id="blob" class="btn large primary" rel="popover">hover for popover</a>')
	
  )
))
