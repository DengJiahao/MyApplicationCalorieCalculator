library(shiny)
shinyServer(
  function(input, output) {
    output$age <- renderPrint({input$age})
    output$gender <- renderPrint({input$gender})
    output$weight <- renderPrint({input$weight})
    output$consumption <- renderPrint({
      if(input$gender=="female")
        {if(input$age>60)
          10.6*input$weight+600
         else
           if(input$age>=31)
             8.6*input$weight+830
         else
             14.6*input$weight+450
      }
      else
        {if(input$age>60)
        13.4*input$weight+490
       else
         if(input$age>=31)
           11.5*input$weight+830
       else
         15.2*input$weight+680
      }
    })
  }
)