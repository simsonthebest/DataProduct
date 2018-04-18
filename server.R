#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
data(swiss)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$Plot <- renderPlot({
    
    # draw the histogram with the specified number of bins
    #interval cut(swiss[,input$Parameter],q)
    g <- ggplot(data = swiss,aes(x = "", y = swiss[,input$Parameter])) + 
      geom_boxplot(fill='#A4A4A4', color="black")+ ylab("Percentile") + xlab(input$Parameter) +
      ggtitle(paste(input$Parameter,"Distribution", sep = " "))
    g + theme(plot.title = element_text(color="red", size=14, face="bold.italic"),
              axis.title.x = element_text(color="blue", size=14, face="bold"),
              axis.title.y = element_text(color="#993333", size=14, face="bold"))
    
    
  })
  
})
