#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#


library(shiny)

shinyUI(fluidPage(
    
    # Application title
    titlePanel("Simple morgage calculator"),
    
    # Sidebar with  some inputs 
    sidebarLayout(
        sidebarPanel(
            #Input: Simple integer intervals
            numericInput("Principal", "What is your loan amount?", value = 10000),
            sliderInput("Years", "Length of loan in years", min = 0, max = 30, step = 1, value=20),
            sliderInput("Rate", "What is your interest rate in %?", min= 0, max = 50, step = 0.01, value = 6)
            #checkboxInput("ShowPlot", "Display plot?", TRUE)
        ),
        
        # Output the monthly payments 
        mainPanel(
            h2("Your estimated monthly payment:"),
            h1(textOutput("MonthlyPayment") )
            
        )
    )
))





