# Section transitions

transition_to_north = function(){
  story_section(
    title = "1. Northern biodiversity",
    content = list(
      p("This summer, we saw some very cool observations from the North! These observations are incredibly valuable to understand and track biodiversity changes in Arctic ecosystems, which are particularly vulnerable to climate change.")
    ),
    position = "center",
    width = 600,
    bg_color = "white"
  )
}

transition_to_ranges = function(){
  story_section(
    title = "2. Species on the move",
    content = list(
      p("We had some surprises this summer! You saw some species outside of their known range limits. These observations are very important to track new species' arrivals as well as species' range shifts.")
    ),
    position = "center",
    width = 600,
    bg_color = "white"
  )
}


transition_to_missingspecies = function(){
  story_section(
    title = "3. Lost and found",
    content = list(
      p(HTML("iNaturalist Canada <a href = 'https://www.inaturalist.org/blog/108240-dashboard'>asked for your help to find missing species in Canada</a>, and you delivered! Over 170 missing species were observed on iNaturalist.ca this summer. This number is likely to keep going up as your identifications roll in to validate these new sightings! Here are some noteworthy finds!"))
    ),
    position = "center",
    width = 600,
    bg_color = "white"
  )
}


transition_to_greatshots = function(){
  story_section(
    title = "4. Great shots!",
    content = list(
      p("Beyond this valuable data, you took great photos of Canadian biodiversity this summer. Here are some of our favourites!")
    ),
    position = "center",
    width = 600,
    bg_color = "white"
  )
}



