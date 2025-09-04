# Section transitions

transition_to_north = function(){
  story_section(
    title = "1. Northern biodiversity.",
    content = list(
      p("This summer, we saw some very cool observations from the North! These observations are incredibly valuable to understand and track biodiversity changes in Arctic ecosystems, which are particularly vulnerable to climate change."),
      p("Let's check out some of the species you found!")
    ),
    position = "center",
    width = 600,
    bg_color = "white"
  )
}

transition_to_greatshots = function(){
  story_section(
    title = "2. Great shots!",
    content = list(
      p("You took great photos of Canadian biodiversity this summer. Here are some of our favourites!")
    ),
    position = "center",
    width = 600,
    bg_color = "white"
  )
}



transition_to_ranges = function(){
  story_section(
    title = "3. Range extremes!",
    content = list(
      p("We had some surprises this summer! You saw some species outside of their known range limits. These observations are very important to track new species' arrivals as well as species' range shifts.")
    ),
    position = "center",
    width = 600,
    bg_color = "white"
  )
}
