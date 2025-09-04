# Northern biodiversity highlights

marker_col = "#B9375D"

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
