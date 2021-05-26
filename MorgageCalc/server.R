
library(shiny)


shinyServer(function(input, output) {
    #Call to function morgage to calculate the monthly payment M   
    morgage <- function(P, I, L){
        J <- I/(12*100)
        N <- 12*L
        M <- P*J/(1-(1+J)^(-N))
        return(M)
        
    }
    
    
    output$MonthlyPayment <- renderText({ 
        morgage(P=input$Principal, I=input$Rate, L=input$Years)})
    
})
