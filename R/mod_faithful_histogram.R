#' Old Faithful histogram Shiny module
#'
#' @description UI and server function for an example Shiny module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @name mod_faithful_histogram
#'
NULL

#' @rdname mod_faithful_histogram
#'
#' @importFrom shiny NS tagList
mod_faithful_histogram_ui <- function(id) {
  ns <- NS(id)
  tagList(
    fluidRow(
      column(
        3,
        sliderInput(
          ns("bins"), "Number of bins:",
          min = 1, max = 50, value = 30
        ),
        checkboxInput(
          ns("density"),
          "density"
        )
      ),

      # Show a plot of the generated distribution
      column(
        9,
        plotOutput(ns("distPlot"))
      )
    )
  )
}

#' @rdname mod_faithful_histogram
#'
#' @param variable Reactive expression yielding the variable to plot the histogram
#'
#' @importFrom graphics hist
mod_faithful_histogram_server <- function(input, output, session,
                                          variable=reactive(NULL)) {
  ns <- session$ns

  # generate bins based on input$bins from ui.R
  x    <- reactive(datasets::faithful[, variable()])
  bins <- reactive(seq(min(x()), max(x()), length.out = input$bins + 1))

  output$distPlot <- renderPlot({
    # draw the histogram with the specified number of bins
    hist(
      x(), breaks = bins(), freq = !input$density,
      main = paste("Histogram of", variable()),
      col = "darkgray", border = "white"
    )
  })

  reactive(NULL)
}



