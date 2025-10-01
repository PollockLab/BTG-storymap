# Northern biodiversity highlights

marker_col = "#B9375D"

fiord_df = readRDS("outputs/expedition-fiord-bioblitz.rds")

## Saxifrage -------------------------------------------------------------------

# ui
hl_north1_ui = function(){
  
  "hl_north1" = story_section(
    title = "Thank you to Rebecca Rogge for making the most Northern observations!",
    content = list(
      p(HTML("Here's @rogger's observation of Purple Saxifrage (<i>Saxifraga oppositifolia</i>), which is the <a href ='https://www.assembly.nu.ca/about-legislative-assembly/official-flower-nunavut'>official flower of Nunavut</a>! Rebecca Rogge also made the second-most northern observation of Muskox on iNaturalist.ca this summer (check it out <a href = 'https://inaturalist.ca/observations/294712336'>here</a>!).")),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/529010729/large.jpg", 
          width = "350px"),
      p(HTML("© Rebecca Rogge (<a href = 'https://inaturalist.ca/people/rogger'>@rogger</a>), some rights reserved (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/293927233'>View observation</a>"))
    )
  )
  
}

# server

hl_north1_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    fly_to(center = c(-71.3266666667, 81.8273783333),
           zoom = 6,
           pitch = 0,
           bearing = 0) |>
    add_markers(c(-71.3266666667, 81.8273783333),
                color =  marker_col)
  
}


## Polar bear ------------------------------------------------------------------

# ui
hl_north2_ui = function(){
  
  "hl_north2" = story_section(
    title = HTML("A Polar bear resting on the ice in Baffin Bay"),
    content = list(
      p(HTML("Polar bears (<i>Ursus maritimus</i>) are of Special Concern in Canada (Source: <a href = 'https://www.canada.ca/en/environment-climate-change/services/species-risk-public-registry.html#summary-details1'>Canadian Species at Risk Act</a>) and are considered a vulnerable species by the International Union for Conservation of Nature (IUCN). <br>Climate change is a major threat to this species: it was part of our <a href ='https://inaturalist.ca/projects/blitz-the-gap-too-hot-to-handle'>Too Hot To Handle</a> challenge.")),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/552036087/large.jpg", 
          width = "350px"),
      p(HTML("© <a href = 'https://inaturalist.ca/people/jessicakir'>@jessicakir</a>, some rights reserved (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/306131817'>View observation</a>"))
  )
  )
}

# server

hl_north2_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    fly_to(center = c(-73.086111, 79.075),
           zoom = 5,
           pitch = 49,
           bearing = 12.8) |>
    add_markers(c(-73.086111, 79.075),
                color =  marker_col)
  
}


## Arctic wolf spider ----------------------------------------------------------

# ui
hl_north5_ui = function(){
  
  "hl_north5" = story_section(
    title = "The most northern observation of the Arctic wolf spider",
    content = list(
      p(HTML("This is one of only 16 observations of the Arctic wolf spider (<i>Pardosa glacialis</i>) on iNaturalist Canada, and it's the most northern! Spiders aren't everyone's cup of tea, but they are an important part of our ecosystems. This is a very valuable data point to help us better understand this rarely-seen species' northern range limits.")),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/516688926/large.jpg", 
          width = "350px"),
      p(HTML("© <a href = 'https://inaturalist.ca/people/isalukis'>@isalukis</a>, some rights reserved (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/287361479'>View observation</a>"))
  )
  )
}

# server

hl_north5_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    fly_to(center = c(-71.37563, 81.82227),
           zoom = 5,
           pitch = 49,
           bearing = 12.8) |>
    add_markers(c(-71.37563, 81.82227),
                color =  marker_col)
  
}


## Dwarf fireweed ------------------------------------------------------------------

# ui
hl_north4_ui = function(){
  
  "hl_north4" = story_section(
    title = HTML("Dwarf fireweed <br>(<i>Chamaenerion latifolium</i>)"),
    content = list(
      p("Thank you to the researchers at the CEN Bylot Island Research Station for posting some cool observations of Arctic biodiversity, too!"),
      p(img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/544237327/medium.jpg", 
            width = "350px"),
       HTML("© Gabriel Bergeron (<a href = ''>@gabbergeron</a>), some rights reserved (CC-BY-NC) | <a href='https://inaturalist.ca/observations/301997960'>View observation</a>"))
    )
  )
}

# server

hl_north4_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    fly_to(center = c(-80.01491, 73.06135),
           zoom = 5,
           pitch = 49,
           bearing = 12.8) |>
    add_markers(c(-80.01491, 73.06135),
                color =  marker_col)
  
}



## Expedition Fiord Bioblitz ---------------------------------------------------

# ui
hl_north3_ui = function(){
  
  "hl_north3" = story_section(
    title = "Expedition Fiord Arctic Bioblitz",
    content = list(
      p(HTML("Researchers bioblitzed the Expedition Fiord region of Umingmat Nunaat (Axel Heiberg Island), an uninhabited island in the Qikiqtaaluk Region of Nunavut in the Canadian High Arctic (See <a href = 'https://inaturalist.ca/projects/expedition-fiord-arctic-bioblitz?tab=stats'>their project</a>). They documented over 170 species (almost 9,000 observations!) this summer, creating an incredibly valuable record of biodiversity in the Canadian High Arctic. A special thank you to Anthony Zerafa (<a href = 'https://inaturalist.ca/people/anthonyzerafa'>@anthonyzerafa</a>), the project's admin and top observer!"))
    )
  )
}

# server

hl_north3_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    fly_to(center = c(-90.74832, 79.41513),
           zoom = 7,
           pitch = 49,
           bearing = 12.8) |>
    # add_heatmap_layer(
    #   id = "bioblitz",
    #   source = fiord_df,
    #   heatmap_opacity = .5,
    #   heatmap_color = interpolate(
    #     property = "heatmap-density",
    #     values = seq(0, 1, 0.2),
    #     stops = c('rgba(33,102,172,0)', 'rgb(103,169,207)',
    #               'rgb(209,229,240)', 'rgb(253,219,199)',
    #               'rgb(239,138,98)', 'rgb(178,24,43)')
    #   )) |>
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


## Photo 1 ---------------------------------------------------------------------

# ui
hl_north3_photo1_ui = function(){
  
  "hl_north3_photo1" = story_section(
    title = "Too Hot to Handle",
    position = "right",
    content = list(
      p(HTML("The Arctic Hare (<i>Lepus arcticus</i>) lives in the Arctic tundra, and is predicted to lose a large part of its range due to climate change (it's part of our <a href = 'https://inaturalist.ca/projects/blitz-the-gap-too-hot-to-handle'>Too Hot To Handle</a> challenge). This is one of <400 observations of this species in Canada, which is very valuable to help us track how this species responds to climate change!")),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/540328839/large.jpg", 
          width = "350px"),
      p(HTML("© Anna O'Flynn (<a href ='https://inaturalist.ca/people/annaoflynn'>@annaoflynn</a>), some rights reserved (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/299906103'>View observation</a>"))
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
           zoom = 14,
           pitch = 49,
           bearing = 12.8) 
}

## Photo 2 ---------------------------------------------------------------------

# ui
hl_north3_photo2_ui = function(){
  
  "hl_north3_photo2" = story_section(
    title = HTML("Polaris Fritillary"),
    position = "right",
    content = list(
      p(HTML("The Polaris Fritillary (<i>Boloria polaris</i>) is one of only six butterfly species found on Canada's Ellesmere Island, and has only been logged 223 times on iNaturalist Canada.")),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/530542834/large.jpg", 
          width = "350px"),
      p(HTML("© Anthony B. Zerafa (<a href = 'https://inaturalist.ca/people/anthonyzerafa'>@anthonyzerafa</a>), some rights reserved (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/294739623'>View observation</a>"))
    )
  )
}

# server
hl_north3_photo2_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    add_markers(c(-90.7564916667, 79.4145666667),
                color = marker_col)
}


## Photo 3 ---------------------------------------------------------------------

# ui
hl_north3_photo3_ui = function(){
  
  "hl_north3_photo3" = story_section(
    title = "Rare species sighting!",
    position = "right",
    content = list(
      p(HTML("The Tundra Stoat (<i>Mustela erminea ssp. arctica</i>) is pretty hard to find: only 4 observations have been documented in iNaturalist Canada. Thank you to <a href = 'https://inaturalist.ca/people/bo_curtis_'>@bo_curtis_</a>, who made the first observation iNaturalist.ca on Umingmat Nunaat (Axel Heiberg Island).")),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/169861168/large.jpg", 
          width = "350px"),
      HTML("Photo from a <a href - 'https://inaturalist.ca/observations/101698840'>2016 observation </a> by © Garin Taylor (<a href = 'https://inaturalist.ca/people/garint63'>@garint63</a>) (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/293216339'>View bo_curtis_'s observation</a>")
    )
  )
}

# server
hl_north3_photo3_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    add_markers(c(-90.7448189911, 79.4155046247),
                color = marker_col)
}
