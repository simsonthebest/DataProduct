#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("SES Measure in 47 provinces of Swiss"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
                sidebarPanel(
                  selectInput("Parameter", "Parameter:",  
                              choices=colnames(swiss))
                ),
                
                # Show a plot of the generated distribution
                mainPanel(
                  plotOutput("Plot"),
                  h3("Standardized fertility measure and socio-economic indicators in Swiss in 1888"),
                  h4("*Guide: Users can select one of these parameters through the select input box. Then, the users can view the box plot that shows the distribution of the parameter across the 47 provinces in Swiss.*")
                )
  )
))
