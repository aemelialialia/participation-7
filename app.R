# Load the library
library(shiny)

# Create the UI for the app
ui <- fluidPage(
  titlePanel("Age Calculator"),
  numericInput("year", label = "Which year were you born?", value = 2018),
  numericInput("month", label = "Which month were you born?", 
               value = 01, max = 12),
  numericInput("day", label = "Which day were you born?", value = 01, max = 31),
  
  strong("Age"), textOutput("age")
  
)

# Create the server side of the app
server <- function(input, output) {
  output$age <- renderText({
    return(paste0("You're now: ", 2018 - input$year, " years ",
            abs(05 - input$month), " months and ", abs(12 - input$day), " days old"))
  })
}

# Create the Shiny App
shinyApp(ui = ui, server = server)