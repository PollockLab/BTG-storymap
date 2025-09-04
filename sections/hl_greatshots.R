# Great photos

marker_col = "#B9375D"

## Vancouver Island Marmot -----------------------------------------------------

# ui
hl_shot1_ui = function(){
  "hl_shot1" = story_section(
    title = "Hi there, Vancouver Island Marmot!",
    content = list(
      p(HTML("The Vancouver Island Marmot (<i>Marmota vancouverensis</i>) is a species that is endemic to Vancouver Island, British Columbia. It is also <b>Endangered in Canada</b> (<a href ='https://www.canada.ca/en/environment-climate-change/services/species-risk-public-registry.html#summary-details1'>Canadian Species at Risk Act</a>)"),
        img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/526940551/large.jpg", 
            width = "350px"),
        a("(c) Adam Taylor – some rights reserved (CC BY-NC)", src = "https://inaturalist.ca/observations/292793285")        )
    )
  )
}

# server

hl_shot1_server = function(){
  
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
}


## Interactions!! --------------------------------------------------------------

# ui
hl_shot2_ui = function(){
  "hl_shot2" = story_section(
    title = "Action shot!",
    content = list(
      p(HTML("A Barred Owl (<i>Strix varia</i>) having a snack (a Signal Crayfish fished out of a creek!)."),
        img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/522082463/large.jpg", 
            width = "350px"),
        a("© Brian Starzomski, some rights reserved (CC-BY-NC)", src = "https://inaturalist.ca/observations/290230351")        )
    )
  )
}

# server

hl_shot2_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    fly_to(center = c(-123.456696, 48.558777), 
           zoom = 8,
           pitch = 49,
           bearing = 12.8) |> 
    add_markers(
      c(-123.456696, 48.558777),
      color = marker_col,
      rotation = 0
    )
}


