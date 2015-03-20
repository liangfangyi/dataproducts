shinyUI(fluidPage(
    titlePanel("Predict the Iris Species"),
    
    sidebarLayout(
        sidebarPanel(
            helpText("Predict the Iris Species
                     with a given Sepal and Petal size"),
                
            sliderInput("Sepal.Length", 
                        label = "Length of Sepal",
                        min = min(iris[,1]), max = max(iris[,1]),
                        value = min(iris[,1]),step = 0.1),
                    
            sliderInput("Sepal.Width", 
                    label = "Width of Sepal",
                    min = min(iris[,2]), max = max(iris[,2]),
                    value = min(iris[,2]),step = 0.1),
            
            sliderInput("Petal.Length", 
                        label = "Length of Petal",
                        min = min(iris[,3]), max = max(iris[,3]),
                        value = min(iris[,3]),step = 0.1),
            
            sliderInput("Petal.Width", 
                        label = "Width of Petal",
                        min = min(iris[,4]), max = max(iris[,4]),
                        value = min(iris[,4]),step = 0.1)
            ),
        
        mainPanel(
            h1("Explanation:"),
            p("This App will predict the Iris Species when you chose a
              certain size of the Petal and Sepal."),
            p("So, just pick whatever a size you want from the slider
              on the left, and the predict specy will be shown below"),
            h1("Result:"),
            textOutput("text1")
        )
    )
))
