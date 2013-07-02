library(shiny)

incrementButton <- function(inputID, value = 0) {
	tagList(
		singleton(tags$head(tags$script(src = "alert.js"),tags$link(rel = 'stylesheet', type = 'text/css', href = 'css/bootstrap.min.css'))),
		tags$button(
			id=inputID,
			class="increment btn btn-primary",			
			as.character(value)
		)
	)
}

# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
  
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
	
	incrementButton("thisthis"),
	HTML('<a href="#" id="tooltip" data-placement="top" data-toggle="tooltip" title="first tooltip">hover over me</a>')
  ),

  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot")
	
  )
))
