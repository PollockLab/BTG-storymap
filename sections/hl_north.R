# Northern biodiversity highlights

marker_col = "#B9375D"

fiord_df = readRDS("outputs/expedition-fiord-bioblitz.rds")

## Saxifrage -------------------------------------------------------------------

# ui
hl_north1_ui = function(){
  
  "hl_north1" = story_section(
    title = "The most Northern observation!",
    content = list(
      p(HTML("Purple Saxifrage (<i>Saxifraga oppositifolia</i>)"),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/529010729/large.jpg", 
          width = "350px"),
      a("© Rebecca Rogge, some rights reserved (CC-BY-NC)", src = "https://inaturalist.ca/observations/293927233")        )
        )
  )
}

# server

hl_north1_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    fly_to(center = c(-71.3266666667, 81.8273783333),
           zoom = 3,
           pitch = 0,
           bearing = 0) |>
    add_markers(c(-71.3266666667, 81.8273783333),
                color =  marker_col)
  
}


## Polar bear ------------------------------------------------------------------

# ui
hl_north2_ui = function(){
  
  "hl_north2" = story_section(
    title = "",
    content = list(
      p(HTML("Polar bear (<i>Ursus maritimus</i>)"),
        img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/552036087/large.jpg", 
            width = "350px"),
        a("© jessicakir, some rights reserved (CC-BY-NC)", src = "https://inaturalist.ca/observations/306131817")        )
    )
  )
}

# server

hl_north2_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    fly_to(center = c(-73.086111, 79.075),
           zoom = 3,
           pitch = 0,
           bearing = 0) |>
    add_markers(c(-73.086111, 79.075),
                color =  marker_col)
  
}

## Expedition Fiord Bioblitz ---------------------------------------------------

# ui
hl_north3_ui = function(){
  
  "hl_north3" = story_section(
    title = "Expedition Fiord Arctic Bioblitz",
    content = list(
      p(HTML("Researchers bioblitzed the Expedition Fiord region of Umingmat Nunaat (Axel Heiberg Island), an uninhabited island in the Qikiqtaaluk Region of Nunavut in the Canadian High Arctic. They documented over 170 species (almost 9,000 observations!) this summer, creating an incredibly valuable record of biodiversity in the Canadian High Arctic."))
    )
  )
}

# server

hl_north3_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    fly_to(center = c(-90.74832, 79.41513),
           zoom = 7,
           pitch = 0,
           bearing = 0) |>
    add_heatmap_layer(
      id = "bioblitz",
      source = fiord_df,
      heatmap_opacity = .5,
      heatmap_color = interpolate(
        property = "heatmap-density",
        values = seq(0, 1, 0.2),
        stops = c('rgba(33,102,172,0)', 'rgb(103,169,207)',
                  'rgb(209,229,240)', 'rgb(253,219,199)',
                  'rgb(239,138,98)', 'rgb(178,24,43)')
      )) |>
    add_circle_layer(
      id = "bioblitz2",
      source = fiord_df,
      circle_color = "rgb(178,24,43)",
      circle_radius = 5,
      circle_stroke_color = "#ffffff",
      circle_stroke_width = 2,
      circle_opacity = 0.8,
      tooltip = "label"
    )
  
}

## Photo 1 ----

# ui
hl_north3_photo1_ui = function(){
  
  "hl_north3_photo1" = story_section(
    title = "What a shot!",
    position = "right",
    content = list(
      p(HTML("The Arctic Hare (<i>Lepus arcticus</i>) is a little hard to find: it lives in the Arctic tundra, and only ~400 sightings have been recorded on iNaturalist Canada so far.")),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/540328839/large.jpg", 
          width = "350px"),
      p("© Anna O'Flynn, some rights reserved (CC-BY-NC)"),
      HTML("<a href = 'https://inaturalist.ca/observations/299906103'>View observation</a>")
    )
  )
}

# server
hl_north3_photo1_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    add_markers(c(-90.7478716667, 79.4148716667),
                color = marker_col) |>
    fly_to(center = c(-90.7478716667, 79.4148716667), 
           zoom = 7,
           pitch = 49,
           bearing = 12.8) 
}


# tundra stoat - only 4 obs in Canada of this subspecies
# https://inaturalist.ca/observations/293216339

# fritillary
# https://inaturalist.ca/observations/294739623
