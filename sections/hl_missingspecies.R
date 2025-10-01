# Missing species

marker_col = "#B9375D"


## Pretty spider -------------------------------------------------------------------

# ui
hl_missing1_ui = function(){
  
  "hl_missing1" = story_section(
    title = "Lost and found in Dundee, Canada!",
    content = list(
      p(HTML("<i>Paradamoetas fontanus</i> was observed for the first time (and photographed beautifully!) this summer on iNaturalist. It is Imperiled in Canada (source: <a href = 'https://explorer.natureserve.org/Taxon/ELEMENT_GLOBAL.2.119580'>NatureServe</a>), so each observation is critical to inform conservation.")),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/525657222/large.jpg", 
          width = "350px"),
      p(HTML("© Tiziano Hurni-Cranston (<a href = 'https://inaturalist.ca/people/salticids'>@salticids</a>), some rights reserved (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/292122124'>View observation</a>"))
    )
  )
}

# server

hl_missing1_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    fly_to(center = c(-74.44685, 45.04118),
           zoom = 10,
           pitch = 0,
           bearing = 0) |>
    add_markers(c(-74.44685, 45.04118),
                color =  marker_col)
  
}

## Huge progress ---------------------------------------------------------------

# ui
hl_missing2_ui = function(){
  
  "hl_missing2" = story_section(
    title = "This missing species was observed 32 times!",
    content = list(
      p(HTML("Before 2025, there was only 1 observation of <i>Stenacidia violacea</i> on iNaturalist Canada, contributed by Tori Miller (<a href ='https://inaturalist.ca/people/beeworldly'>@beeworldly</a>). Now, it's been observed 33 times! Thank you to Pete Lypkie (<a href ='https://inaturalist.ca/people/doviende'>@doviende</a>) who made 30 observations, François Rousseu (<a href ='https://inaturalist.ca/people/frousseu'>@frousseu</a>), and Justin Chan (<a href ='https://inaturalist.ca/people/justinchans'>@justinchans</a>) for this awesome progress!")),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/503676219/large.jpg", 
          width = "350px"),
      p(HTML("© Pete Lypkie (<a href = 'https://inaturalist.ca/people/doviende'>@doviende</a>), some rights reserved (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/280439599'>View observation</a>"))
    )
  )
}

# server

hl_missing2_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    fly_to(center = c(-124.99351, 49.69164),
           zoom = 6,
           pitch = 0,
           bearing = 0) |>
    add_markers(c(-124.99351, 49.69164),
                color =  marker_col)
  
}


## Missing plant ---------------------------------------------------------------

# ui
hl_missing3_ui = function(){
  
  "hl_missing3" = story_section(
    title = "First sighting of Alpine Speedwell!",
    content = list(
      p(HTML("Before 2025, there were no observations of Alpine Speedwell <i>Veronica alpina</i> on iNaturalist Canada. Now, it's been observed 4 times! Thank you to(<a href ='https://inaturalist.ca/people/shermchar'>@shermchar</a> who made the first observation of this species on iNaturalist.ca, <a href ='https://inaturalist.ca/people/antjevl'>@antjevl</a>, and <a href ='https://inaturalist.ca/people/lerland'>@lerland</a> for finding this missing species!")),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/572548387/medium.jpg", 
          width = "250px"),
      p(HTML("© <a href = 'https://inaturalist.ca/people/doviende'>@antjevl</a>), some rights reserved (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/316876219'>View observation</a>"))
    )
  )
}

# server

hl_missing3_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    fly_to(center = c(-62.77638, 58.45045),
           zoom = 6,
           pitch = 0,
           bearing = 0) |>
    add_markers(c(-62.77638, 58.45045),
                color =  marker_col)
  
}
