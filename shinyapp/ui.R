library(shiny)

# Define UI for Air Quality application
shinyUI(pageWithSidebar(
        
        # Application title
        headerPanel("Air Quality Data"),
        
        sidebarPanel(
                selectInput("variable", "Variable:",
                            list("Ozone" = "Ozone", 
                                 "Solar Radiation" = "Solar.R", 
                                 "Wind" = "Wind",
                                 "Temperature"="Temp")),
                sliderInput("bins",
                            "Number of bins:",
                            min = 5,
                            max = 50,
                            value = 30)    
                ),
        
        mainPanel(
                plotOutput("distPlot")
        )
))
