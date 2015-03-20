source("specy.R")

shinyServer(
    function(input, output) {
        output$text1 <- renderText({
            paste("Your Specy is ", Species(input$Sepal.Length,input$Sepal.Width,input$Petal.Length,input$Petal.Width))
        })
        
    }
)
