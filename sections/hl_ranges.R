# Range extremes

library(sf)

# Beetle -----------------------------------------------------------------------

beetle_occ = readRDS("outputs/tigerbeetle-occurrences.rds")

# ui
hl_range1_ui = function(){
  "hl_range1" = story_section(
    title = "Going east!",
    position = "right",
    content = list(
      HTML("Rebecca McCluskey posted the most Eastward sighting of LeConte's Tiger Beetle (<i>Cicindela scutellaris</i> ssp. <i>lecontei</i>) so far. This is a critically imperilled species in New Brunswick."),
      img(src = "https://static.inaturalist.org/photos/557178627/large.jpg", 
          width = "350px"),
      HTML('<a href = "https://inaturalist.ca/observations/308811159">View observation</a>')
    )
  )
}

# server

hl_range1_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    add_markers(c(-65.9158788997, 46.1447489997),
                color = marker_col) |>
    fly_to(center = c(-65.9158788997, 46.1447489997), 
           zoom = 4,
           pitch = 49,
           bearing = 12.8) |>
    add_circle_layer(
      id = "tigerbeetle",
      source = df,
      circle_color = "#1f78b4",
      circle_radius = 8,
      circle_stroke_color = "#ffffff",
      circle_stroke_width = 2,
      circle_opacity = 0.8
    )
}


# Sea slug ---------------------------------------------------------------------

# Sea slug coordinates
slug_coords <- list(marker1 = c(-64.0085245702,44.5214525538),
                    marker2 = c(-64.0083584185, 44.5207831996),
                    marker3 = c(-64.7603698616, 43.9106282054),
                    marker4 = c(-64.7818750107, 43.8991835493))

# ui
hl_range2_ui = function(){
  "hl_range2" = story_section(
    title = "Newly-spotted  species!",
    position = "right",
    content = list(
      p(HTML("Crowned Aeolis (<i>Facelina auriculata</i>) was seen for the first time in Canada this summer. It's typically found in European waters.")),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/538033836/large.jpg", 
          width = "350px"),
      p("© Hunter Stevens, some rights reserved (CC-BY-NC)"),
      HTML("<a href = 'https://inaturalist.ca/observations/298680646'>View observation</a>")
    )
  )
}


# server

hl_range2_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    clear_layer("tigerbeetle") |>
    fly_to(center = c(-64.7818750107, 43.8991835493), 
           zoom = 8,
           pitch = 49,
           bearing = 12.8) |>
    add_markers(
      data = slug_coords,
      color = marker_col,
      rotation = 0
    )
}
