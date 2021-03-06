#' name_of_module2 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_name_of_module2_ui <- function(id){
  ns <- NS(id)
  tagList(
    h2("Another plot"),
    plotOutput(ns("plot"))
  )
}
    
#' name_of_module2 Server Functions
#'
#' @noRd 
mod_name_of_module2_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$plot <- renderPlot({
      plot(airquality)
    })
  })
}
    
## To be copied in the UI
#
    
## To be copied in the server
# 
