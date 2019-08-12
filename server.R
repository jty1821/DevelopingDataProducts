server <- function(input, output) {
  output$totassetout <- renderText({
    paste("Your total asset:",input$totasset)
    })
  
  output$netincomeout <- renderText({
    paste("Your net income:",input$netincome)
  })
  
  output$totrevenueout <- renderText({
    paste("Your total revenue:",input$totrevenue)
  })
  
  output$netprofitmargin <- renderText({
    if(input$netincome==0 & input$totrevenue== 0){
      initialout <- paste("Your net profit margin is:", 0)
      return(initialout)
    }
    paste("Your net profit margin (%) is:", round(input$netincome/input$totrevenue*100, digits = 2),"%")
  })
  
  output$roa <- renderText({
    if(input$netincome==0 & input$totasset== 0){
      initialout <- paste("Your Return on Asset (ROA) is:", 0)
      return(initialout)
    }
    paste("Your Return on Asset (ROA) (%) is:", round(input$netincome/input$totasset*100, digits = 2),"%")
  })
  
}