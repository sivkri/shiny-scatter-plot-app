# Load the shiny library
library(shiny)

# Set the working directory
setwd("N:/HuR/testApp")

# Define the VAF column names
axis_options <- c(
  "Skin_d42_I_vaf", "MC_d0_clot_A_vaf", "MC_d0_slide_A_vaf", "BM_d42_I_vaf",
  "M_d1893_A_vaf", "M_d3068_A_vaf", "SB_d3072_A_rna_vaf", "SB_d3072_A_vaf",
  "BM_d3072_A_vaf", "SL_d3072_I_vaf", "MC_d3107_A_vaf", "BM_d3137_I_vaf",
  "M_d3219_I_vaf", "BM_d4024_I_vaf"
)

# Set up the front end
shinyUI(fluidPage(
  # Set up the UI layout with a sidebar and main panel
  sidebarLayout(
    # Set the sidebar panel to allow for user input
    sidebarPanel(
      selectInput(inputId = "x_axis", label = "x axis", choices = axis_options, selected = "Skin_d42_I_vaf"),
      selectInput(inputId = "y_axis", label = "y axis", choices = axis_options, selected = "MC_d0_clot_A_vaf"),
      textInput(inputId = "point_color", label = "color", value = "Class")
    ), 
    
    mainPanel(
      plotOutput("scatterPlot"),
      textOutput("text")
    )
  )
))
