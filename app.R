# Storymap of the Blitz the Gap highlight observations for 2025

library(shiny)
library(mapgl)

## Data loading ----------------------------------------------------------------

# Marker color
marker_col = "#B9375D"

# example of loading the iNaturalist range maps if needed later
# range_vanmarmot <- sf::st_read("https://inaturalist-open-data.s3.us-east-1.amazonaws.com/geomodel/geojsons/latest/46091.geojson")

## Loading functions -----------------------------------------------------------

source("sections/transitions.R")
source("sections/intro.R")
source("sections/hl_north.R")
source("sections/hl_greatshots.R")
source("sections/hl_ranges.R")

## USER INTERFACE --------------------------------------------------------------

ui <- fluidPage(
  story_map(
    
    # Base map -----------------------------------------------------------------
    map_id = "map",
    font_family = "Public Sans",
    map_type = "maplibre",
    
    sections = list(
      
      # Introduction -----------------------------------------------------------
      
      "intro1" = intro1(),
      "intro2" = intro2(),
      
      # Northern biodiversity highlights ---------------------------------------
      
      "section_north" = transition_to_north(),
      "hl_north1" = hl_north1_ui(),
      "hl_north2" = hl_north2_ui(),
      "hl_north3" = hl_north3_ui(),
      "hl_north3_photo1" = hl_north3_photo1_ui(),
      
      # Great shots ------------------------------------------------------------
      
      "section_shots" = transition_to_greatshots(),
      "hl_shot1" = hl_shot1_ui(),
      "hl_shot2" = hl_shot2_ui(),
      
      
      # Range extremes ---------------------------------------------------------
      
      "section_ranges" = transition_to_ranges(),
      "hl_range1" = hl_range1_ui(),
      "hl_range2" = hl_range2_ui(),
      
      # End: Thank you ---------------------------------------------------------
      "thankyou" = story_section(
        title = "Thank you!",
        content = list(
          p("Thank you for participating in Blitz the Gap."),
          img(src = "https://github.com/PollockLab/blitz-the-gap/blob/master/images/Logo2.png?raw=true",
              width = "350px", position = "center")
        ),
        position = "center"
      )
      
      
      # # Raster layer -----------------------------------------------------------
      # "gaps-filled" = story_section(
      #   title = "Gaps no more",
      #   "Check out the progress made thanks to Blitz the Gap."
      # ),
      
    )
  )
)


# SERVER # ---------------------------------------------------------------------

server <- function(input, output, session) {
  
  # Base map -------------------------------------------------------------------
  output$map <- renderMaplibre({
    maplibre(maptiler_style("topo"),
      scrollZoom = FALSE,
      center = c(-101, 62),
      zoom = 2) |>
      set_projection("globe")
  })
  
  # Introduction ---------------------------------------------------------------
  
  # set the zoom and center of the base map
  on_section("map", "intro1", {
    maplibre_proxy("map") 
  })
  
  on_section("map", "intro2", {
    maplibre_proxy("map") 
  })
  
  on_section("map", "transition_to_north", {
    maplibre_proxy("map") |> 
      fly_to(center = c(-101, 65),
             pitch = 0,
             bearing = 0)
  })
  
  # Northern biodiversity highlight
  on_section("map", "hl_north1", {
    hl_north1_server()
  })
  
  on_section("map", "hl_north2", {
    hl_north2_server()
  })
  
  on_section("map", "hl_north3", {
    hl_north3_server()
  })
  
  on_section("map", "hl_north3_photo1", {
    hl_north3_photo1_server()
  })
  
  on_section("map", "section_shots", {
    maplibre_proxy("map") |> 
      # clear the heatmap and circle layers
      clear_layer("bioblitz") |>
      clear_layer("bioblitz2") |>
    # fly to new location!
      fly_to(center = c(-101, 63),
             zoom = 2,
             pitch = 0,
             bearing = 0)
  })
  
  # Great shots ----------------------------------------------------------------
  
  on_section("map", "hl_shot1", {
    hl_shot1_server()
  })
  
  on_section("map", "hl_shot2", {
    hl_shot2_server()
  })
  
  # Range extremes -----------------------------------------------------------------
  
  on_section("map", "section_ranges", {
    maplibre_proxy("map") |> 
      fly_to(center = c(-101, 63),
             zoom = 2,
             pitch = 0,
             bearing = 0)
  })
  
  on_section("map", "hl_range1", {
    hl_range1_server() 
  })
  
  on_section("map", "hl_range2", {
    hl_range2_server()
  })
  
  
  # End: Thank you -------------------------------------------------------------
  on_section("map", "thankyou", {
    maplibre_proxy("map") |>
      fly_to(center = c(-101, 62),
             zoom = 2,
             pitch = 0,
             bearing = 0)
  })
  
  # # Raster layer ---------------------------------------------------------------
  # on_section("map", "gaps-filled", {
  #   maplibre_proxy("map") |>
  #     fly_to(center = c(-100.800106, 59.961075),
  #            zoom = 2,
  #            pitch = 0,
  #            bearing = 0) |>
  # add_image_source(
  #   id = "radar",
  #   url = "https://docs.mapbox.com/mapbox-gl-js/assets/radar.gif",
  #   coordinates = list(
  #     c(-80.425, 46.437),
  #     c(-71.516, 46.437),
  #     c(-71.516, 37.936),
  #     c(-80.425, 37.936)
  #   )
  # ) |>
  # add_raster_layer(
  #   id = 'radar-layer',
  #   source = 'radar',
  #   raster_fade_duration = 0
  # )
  #})
  
  
}

shinyApp(ui, server)