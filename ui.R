library(shiny)

shinyUI( pageWithSidebar(
  
  headerPanel("Guess The Number!"),
  
  sidebarPanel(
    textInput('guess', 'Number', value = ""),
    h5('Please press \'Go!\' only on your first attempt'),
    actionButton("goButton", "Go!")
  ), 
  mainPanel(
    h2('Guess a number between 1 and 50'),
    h5('The objective of this game is to guess the number between
       1 and 50 (inclusive) and try to match it with the computer\'s
       selection'),
    h3('Results of guess'),
    h4('You entered'),
    verbatimTextOutput("inputValue"),
    h4('Which is...'),
    verbatimTextOutput("outputValue"),
    h5('Please note that the application will continue running even
       after you have guessed the number correctly. This is due to the
       app developer\'s lack of skills/experience that has left this app
       flawed. Apologies.'),
    h5('For a more comprehensive, better and visually pleasing version of
       this game (from an awesome developer), please go to this website: http://www.funbrain.com/guess/')
    )
    )
)