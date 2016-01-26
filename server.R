
library(shiny)
shinyServer(
        function(input, output) {
                output$vars = renderPrint({input$vars})
                output$summary = renderPrint({
                        vars = input$vars
                        vars = paste(vars, collapse = "+")
                        formula = paste("mpg ~", vars)
                        model = lm(formula, data = mtcars)
                        summary(model)
                })
                output$formula = renderPrint({
                        vars = input$vars
                        vars = paste(vars, collapse = "+")
                        formula = paste("mpg ~", vars)
                        formula
                })
                
        }
)