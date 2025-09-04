# Script to process data into mapped layers


# Occurrence points of tiger beetle

df = read.csv("data/heavy/raw-inat-exports/tigerbeetle_observations-611570.csv/observations-611570.csv") |>
  dplyr::select(c(id, latitude, longitude)) |>
  sf::st_as_sf(coords = c("longitude", "latitude"), crs =  st_crs(4326))
saveRDS(df, "data/tigerbeetle-occurrences.rds")


## Fiord expedition

df2 = read.csv("data/heavy/raw-inat-exports/bioblitz_fiord_observations-611545.csv/observations-611545.csv")|>
  dplyr::select(c(id, latitude, longitude)) |>
  sf::st_as_sf(coords = c("longitude", "latitude"), crs =  st_crs(4326))

maplibre()
