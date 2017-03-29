library(shiny)

## Declare the answer
number <- floor(runif(1,1,51))

numberGuessed <- function(guess, number) {
  returnValue <- "Nothing entered yet."
  
  ## Number guessed by user
  
  if (guess > 50) {
    returnValue <- 'Above 50.\nPlease make a selection between 1 and 50.'
  }
  else if (guess < 1) {
    returnValue <- 'Below 1.\nPlease make a selection between 1 and 50.'
  }
  else if (guess > number) {
    returnValue <- 'Higher than the number.'
  }
  else if (guess < number) {
    returnValue <- 'Lower than the number.'
  }
  else if (guess == number) {
    returnValue <- 'Correct!'
  }
  returnValue
}


shinyServer( 
  function(input, output) {
    output$inputValue <- renderPrint({as.numeric(input$guess)})
    output$outputValue <- renderText({
      if (input$goButton == 0) "You have not guessed a number yet"
      else if (input$goButton >= 1) numberGuessed(as.numeric(input$guess), number)
    })
  }
)
