#
# This is a small application that converts a user input temperature 
# from Centigrades or Celcius into Fahrenheits OR vice-a-versa
# User can also select a date (although the date has no link to the temperature)
#
# This is the UI part of the application
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Temperature Converter"),
    
    sidebarLayout(
        # Sidebar with a slider input for temperature
        sidebarPanel(
            
            dateInput("date", "Select Date:"),
            radioButtons("picker", "Conversion from:", list("Centigrades to Fahrenheits" = 1, "Fahrenheits to Centigrades" = 2)),
            sliderInput("temp", "Select Temperature:", min=-50, max = 150, value=0),
            submitButton("Submit")
        ),
        
        
        # Show the slider for temperature
        mainPanel(

            h3("Converted Temperature:"),
            verbatimTextOutput("temp2"),
            
            h3("On Date:"),
            verbatimTextOutput("date2")
            
        )
    )
))