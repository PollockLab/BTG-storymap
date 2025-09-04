# Storymap of the Blitz the Gap highlight observations for 2025

library(shiny)
library(mapgl)

## Data loading ----------------------------------------------------------------

# Marker color
marker_col = "#B9375D"

# Sea slug coordinates
slug_coords <- list(marker1 = c(-64.0085245702,44.5214525538),
                    marker2 = c(-64.0083584185, 44.5207831996),
                    marker3 = c(-64.7603698616, 43.9106282054),
                    marker4 = c(-64.7818750107, 43.8991835493))

# example of loading the iNaturalist range maps if needed later
# range_vanmarmot <- sf::st_read("https://inaturalist-open-data.s3.us-east-1.amazonaws.com/geomodel/geojsons/latest/46091.geojson")

## Loading functions -----------------------------------------------------------

source("sections/intro1.R")

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
      
      "intro3" = intro3(),
      
      # # Raster layer -----------------------------------------------------------
      # "gaps-filled" = story_section(
      #   title = "Gaps no more",
      #   "Check out the progress made thanks to Blitz the Gap."
      # ),
      
      # Location 1 -------------------------------------------------------------
      "location" = story_section(
        title = "Vancouver Island Marmot",
        content = list(
          img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/526940551/large.jpg",
              width = "350px"),
          a("© Adam Taylor", src = "https://inaturalist.ca/observations/292793285")        )
      ),
      
      # Location 2 -------------------------------------------------------------
      "location2" = story_section(
        title = "LeConte's Tiger Beetle (Cicindela scutellaris ssp. lecontei)",
        content = list(
          HTML("Most eastward sighting of LeConte's Tiger Beetle (<i>Cicindela scutellaris ssp. lecontei</i>), a critically endangered species."),
          img(src = "https://static.inaturalist.org/photos/557178627/large.jpg", 
              width = "350px")
        )
      ),
      
      # Location 3 -------------------------------------------------------------
      "location3" = story_section(
        title = "Newly-spotted sea slug species!",
        content = list(
          p("Crowned Aeolis (Facelina auriculata) was seen for the first time in Canada this summer. It's typically found in European waters."),
          img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/538033836/large.jpg", 
              width = "350px"),
          p("© Hunter Stevens, @hunterefs")
        )
      ),
      
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
  
  # set the zoom and center of the base map
  on_section("map", "intro2", {
    maplibre_proxy("map") 
  })
  
  # set the zoom and center of the base map
  on_section("map", "intro3", {
    maplibre_proxy("map") |> 
      fly_to(center = c(-100.800106, 59.961075),
             zoom = 0,
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
  
  # Location 1 -----------------------------------------------------------------
  on_section("map", "location", {
    maplibre_proxy("map") |> 
      clear_markers() |>
      fly_to(center = c(-125.2995015002, 49.7526028308), 
             zoom = 8,
             pitch = 49,
             bearing = 12.8) |> 
      add_markers(
        c(-125.2995015002, 49.7526028308),
        color = marker_col,
        rotation = 0,
        popup = "Vancouver Island Marmot"
      )
  })
  
  # Location 2 -----------------------------------------------------------------
  on_section("map", "location2", {
    maplibre_proxy("map") |> 
      clear_markers() |>
      fly_to(center = c(-65.9158788997, 46.1447489997), 
             zoom = 6,
             pitch = 49,
             bearing = 12.8)
  })
  
  # Location 3 -----------------------------------------------------------------
  on_section("map", "location3", {
    maplibre_proxy("map") |> 
      fly_to(center = c(-64.7818750107, 43.8991835493), 
             zoom = 8,
             pitch = 49,
             bearing = 12.8) |>
      add_markers(
        data = slug_coords,
        color = marker_col,
        rotation = 0,
        popup = "Facelina Auriculata"
      )
  })
  
  
  # End: Thank you -------------------------------------------------------------
  on_section("map", "thank-you", {
    maplibre_proxy("map") |>
      fly_to(center = c(-64.0083584185, 44.5207831996, ),
             zoom = 2,
             pitch = 0,
             bearing = 0)
  })
  
}

shinyApp(ui, server)