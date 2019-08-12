ui <- fluidPage(
  titlePanel("Financial Analysis"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Navigating an Annual Report."),
      
      numericInput("totasset", label = "Input Total Assets:", value = 0),
      numericInput("netincome", label = "Input Net Income:", value = 0),
      numericInput("totrevenue", label = "Input Total Revenue:", value = 0)
      ),
    
    mainPanel(
      textOutput("totassetout"),
      textOutput("netincomeout"),
      textOutput("totrevenueout"),
      textOutput("netprofitmargin"),
      textOutput("roa")
    )
  )
)