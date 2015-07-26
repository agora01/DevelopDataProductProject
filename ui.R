library(shiny)

# Set Application layout for project

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Developing Data Products Course - Final Proyect"),
  
  
  
  # Sidebar with controls to select the random distribution type
  # and number of observations to generate. Note the use of the
  # br() element to introduce extra vertical spacing
  sidebarLayout(
    sidebarPanel(
      radioButtons("dist", "Distribution:",
                   c("Regular" = "norm",
                     "Uniform" = "unif",
                     "Logarithmic normal" = "lnorm",
                     "Exponential" = "exp")),
      br(),br(),
      downloadButton('downloadData', 'Download Sample Set'),
      br(),br(),
      checkboxInput("checkbox", label = "Add samples one at a time", value = FALSE),
      br(),br(),      
      sliderInput("n", 
                  "Sample size:", 
                  value = 100,
                  min = 1, 
                  max = 300),
      br(),
      sliderInput("reps", 
                  "Number of repetitions:", 
                  value = 200,
                  min = 1, 
                  max = 10000),
      br(),
      actionButton("resample", label = "Generate New Data Set"),
      br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br()
    ),
    
    mainPanel(
      plotOutput("plot")
    )
  )
))



