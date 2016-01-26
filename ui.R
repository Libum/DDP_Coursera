library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Linear Regression Model Buliding with mtcars dataset"),
        sidebarPanel(
                h3('Your task is to predict mpg, using chosen independent variables'),
                checkboxGroupInput("vars", "Independent variables", 
                                   c("cyl" = "cyl", "disp" = "disp", "hp" = "hp", "wt" = "wt", "qsec" = "qsec", "gear" = "gear"),selected = c("wt")),
                h3("Github repo:"),
                h6("https://github.com/Libum/DDP_Coursera.git")
                
        ),
        mainPanel(
                h3("Formula used:"),
                verbatimTextOutput("formula"),
                h3('Model summary:'),
                verbatimTextOutput("summary")
        )
))