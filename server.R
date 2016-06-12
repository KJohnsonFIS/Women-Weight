library(shiny)
data(women)
lmfit <- lm(women$weight ~ women$height)
intercp <- coef(lmfit)[1] 
slope <-  coef(lmfit)[2] 

AvgWeight <- function(Height) {intercp + (slope * Height)}

### must add Reactive #################
shinyServer(
  function(input, output) {
    output$OHeight <- renderPrint({input$Heightin})
    output$OAvgWeight <- renderPrint({round(as.numeric(AvgWeight(input$Heightin)),digit=0)})
      } 
  )
 
