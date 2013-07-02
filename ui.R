library(shiny)

incrementButton <- function(inputID, value = 0) {
	tagList(
		singleton(tags$head(tags$script(src = "alert.js"),tags$script(src = "js/bootstrap.js"),tags$link(rel = 'stylesheet', type = 'text/css', href = 'css/bootstrap.min.css'))),
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
	HTML('
	<a href="#" id="tooltip" data-placement="top" data-toggle="tooltip" title="first tooltip">hover over me</a>
	<button type="button" data-toggle="modal" data-target="#myModal">Launch modal</button>
	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h3>Modal header</h3>
		</div>
		<div class="modal-body">
		<p>One fine body</p>
		</div>
		<div class="modal-footer">
			<a class="btn" data-dismiss="modal" aria-hidden="true">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	')
  ),

  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot")
	
  )
))
