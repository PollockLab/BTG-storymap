# KBAs

# The Wilmatte's Plasterer Bee “prettiest bee in Manitoba” ---------------------

# ui
hl_kba1_ui = function(){
  "hl_kba1" = story_section(
    title = "The Wilmatte's Plasterer Bee",
    position = "right",
    content = list(
      HTML("User <a href='https://inaturalist.ca/people/kirapeters6'>@kirapeters6</a>’s record of Wilmatte's Plasterer Bee (<i>Colletes wilmattae</i>) adds to the handful of Canadian records that exist for this stunning and extremely rare cellophane bee. This confirmation of the species’ presence at Brandon Sandhills and Douglas Marsh KBA provide further recent evidence that the species is likely to meet KBA criteria here."),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/550663135/large.jpg", 
          width = "350px"),
      p(HTML("© Kira (<a href = 'https://inaturalist.ca/people/kirapeters6'>@kirapeters6</a>), some rights reserved (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/305410552'>View observation</a>"))    )
  )
}

# server

hl_kba1_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    add_markers(c(-99.28930, 49.66319),
                color = marker_col) |>
    fly_to(center = c(-99.28930, 49.66319), 
           zoom = 12,
           pitch = 49,
           bearing = 12.8)
}



# Sagebrush Sheep Moth ---------------------------------------------------------

# ui
hl_kba2_ui = function(){
  "hl_kba2" = story_section(
    title = "Sagebrush Sheep moth",
    position = "right",
    content = list(
      p(HTML("This Sagebrush Sheep moth (<i>Hemileuca hera</i>) observation by @myotismike falls within the <a href = 'https://wcscanada.org/newsroom/news/new-key-biodiversity-areas-highlight-critical-prairie-habitat-for-species-at-risk/'>Onefour-Lost River-Sage Creek KBA</a>, and may lead to this species meeting KBA criteria within the site!")),
      img(src = "https://inaturalist-open-data.s3.amazonaws.com/photos/548074940/large.jpg", 
          width = "350px"),
      p(HTML("© <a href = 'https://inaturalist.ca/people/myotismike'>@myotismike</a>, some rights reserved (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/304047515'>View observation</a>"))
    )
  )
}


# server

hl_kba2_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    add_markers(c(-110.57187, 49.38485),
                color = marker_col) |>
    fly_to(center = c(-110.57187, 49.38485), 
           zoom = 8,
           pitch = 49,
           bearing = 12.8)
}


# Hickorynut -------------------------------------------------------------------

# ui
hl_kba3_ui = function(){
  "hl_kba3" = story_section(
    title = "Hickorynut",
    position = "right",
    content = list(
      p(HTML("The Endangered Hickorynut mussel (<i>Obovaria olivaria</i>) has been challenging to assess for KBA criteria because of uncertainty around its distribution in Canada. This summer, iNaturalist users logged 23 new observations of this species. Kelton Adderley-Heron (<a href = 'https://inaturalist.ca/people/kelton_ah'>@kelton_ah</a>) reported one of the northernmost observations documented for this species in the last 10 years.")),
      img(src = "https://static.inaturalist.org/photos/568283413/large.jpg", 
          width = "350px"),
      p(HTML("© Kelton Adderley-Heron (<a href = 'https://inaturalist.ca/people/kelton_ah'>@kelton_ah</a>), some rights reserved (CC-BY-NC) | <a href = 'https://inaturalist.ca/observations/314630743'>View observation</a>"))
    )
  )
}


# server

hl_kba3_server = function(){
  
  maplibre_proxy("map") |> 
    clear_markers() |>
    add_markers(c(-71.43442, 46.72955),
                color = marker_col) |>
    fly_to(center = c(-71.43442, 46.72955), 
           zoom = 8,
           pitch = 49,
           bearing = 12.8)
}
