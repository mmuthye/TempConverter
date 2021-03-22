#
# This is a small application that converts a user input temperature 
# from Centigrades or Celcius into Fahrenheits OR vice-a-versa
# User can also select a date (although the date has no link to the temperature)
#
# This is the server part of the application
#

library(shiny)

# Define server logic required to convert temperature value
shinyServer(function(input, output) {
    
    output$temp2 <- renderPrint({
        if(input$picker == 1) {input$temp * 9/5 + 32}
        else if(input$picker == 2) {(input$temp - 32) * 5/9}
    })
    
    output$date2 <- renderPrint({input$date})
})
