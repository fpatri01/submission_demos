install.packages("tidyverse")
install.packages("shiny")
library(shiny)
library(bslib)

#define ui
ui <- page_sidebar(
  
  title = "US Arrests",
  
  sidebar = sidebar(
    click(
      "State", label = "Arrests by State",
      min = 1, value = 1, max = 50
    )
  ),
  
  plotOutput("arrestPlot")
)
#define server logic
server <- function(x = c(1:50), USArrests) {
  ggplot2(x, USArrests$Murder)
  +geom_line()
}
#shiny app
shinyApp(ui, server)
