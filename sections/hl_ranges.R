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
      HTML("Denis Doucet (@nbdragonflyguy) posted the most Eastward sighting of LeConte's Tiger Beetle (<i>Cicindela scutellaris</i> ssp. <i>lecontei</i>) so far. This is a critically imperilled species in New Brunswick."),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/561604628/large.jpg", 
          width = "350px"),
      p(HTML("© Denis Doucet (<a href = 'https://inaturalist.ca/people/nbdragonflyguy'>@nbdragonflyguy</a>), some rights reserved (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/311125083'>View observation</a>"))    )
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
    title = "Newly-spotted species!",
    position = "right",
    content = list(
      p(HTML("Crowned Aeolis (<i>Facelina auriculata</i>) was seen for the first time in Canada this summer. It's typically found in European waters.")),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/538033836/large.jpg", 
          width = "350px"),
      p(HTML("© Hunter Stevens (<a href = 'https://inaturalist.ca/people/hunterefs'>@hunterefs</a>), some rights reserved (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/298680646'>View observation</a>"))
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

# Zebra swallowtail ---------------------------------------------------------------------

# ui
hl_range3_ui = function(){
  "hl_range3" = story_section(
    title = "Breaking news!",
    position = "right",
    content = list(
      p(HTML("The northernmost observation of the Zebra Swallowtail (<i>Eurytides marcellus</i>) in Canada was made this summer, by <a href='https://inaturalist.ca/people/cbyrne1157'>@cbyrne1157</a>. Before this summer, there was only 1 sighting of this species on iNaturalist.ca. Now, there are 10 new observations! It's such a special sighting, it made the news (<a href = 'https://www.cbc.ca/news/canada/toronto/rare-butterfly-in-high-park-toronto-after-over-century-1.7613900'>read more on CBC</a>)!")),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/548204934/large.jpg", 
          width = "350px"),
      p(HTML("Photo from <a href = 'https://inaturalist.ca/observations/304115203'>observation</a> by © <a href='https://inaturalist.ca/people/sapayoa'>@sapayoa</a> on 05/08/2025, some rights reserved (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/299249364'>View @cbyrne1157's observation</a>"))
    )
  )
}


# server

hl_range3_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    add_markers(c(-79.46599, 43.64462),
                color = marker_col) |>
    fly_to(center = c(-79.46599, 43.64462), 
           zoom = 8,
           pitch = 49,
           bearing = 12.8)
}
