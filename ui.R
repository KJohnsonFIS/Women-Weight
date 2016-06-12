# load shiny package
library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Weight prediction"),
    
    sidebarPanel(
      h4('This website predicts the average weight* for women.'),
      p('Enter height in inches and the average weight in pounds will display after clicking the submit button.'),
      p('* The prediction is based on data from the World Almanac.'),
      br(),
      numericInput('Heightin', 'Enter Women Height in inches', 58, min = 48, max = 84, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("OHeight"),
      h4('The Predicted Average Weight (lbs) for that Height in inches is:'),
      verbatimTextOutput("OAvgWeight")
    )
  )
)