library(shiny)

shinyUI(fluidPage(
  
  titlePanel(title=h4("Distribution of HDB price around rulang primary school",align="center")),
  sidebarLayout(
    sidebarPanel(
      selectInput("var", "1. Select the type of price", choices=c("price"=3,"real price"=4,"log realprice"=1,"residual"=2),selected = 2),
      br(),
      selectInput("distance", "2. Select the type of distnace", choices=c("total"=10,"within 1km"=1,"within2km"=2)),
      br(),
      selectInput("zodiac", "3.Select zodiac to compare with dragon baby effect",choices=c("Dragon"=5,"Rat"= 1,"Ox"=2,"Tiger"=3,"Rabbit"=4,"Snake"=6,"Horse"=7,"Sheep"=8,"Monkey"=9,"Rooster"=10,"Dog"=11,"Pig"=12), selected = 1),
      br(),
      sliderInput("bins","4.Select the number of BINs for the histogram", min=10, max=30, value=30)
      
    ),
    

    mainPanel(
      
      plotOutput("density"),
      plotOutput("density2")
    )
  )
)

)