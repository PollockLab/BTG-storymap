# Script to process data into mapped layers


# Occurrence points of tiger beetle

df = read.csv("data/heavy/raw-inat-exports/tigerbeetle_observations-611570.csv/observations-611570.csv") |>
  dplyr::select(c(id, latitude, longitude, common_name, user_login)) |>
  sf::st_as_sf(coords = c("longitude", "latitude"), crs =  st_crs(4326))
saveRDS(df, "outputs/tigerbeetle-occurrences.rds")


## Fiord expedition

df2 = read.csv("data/heavy/raw-inat-exports/bioblitz_fiord_observations-611545.csv/observations-611545.csv")|>
  dplyr::select(c(id, latitude, longitude, common_name, user_login, image_url, license)) |>
  sf::st_as_sf(coords = c("longitude", "latitude"), crs =  st_crs(4326))
df2$label = paste0("<b>",df2$common_name, "</b><br>Observed by: @", df2$user_login)
saveRDS(df2, "outputs/expedition-fiord-bioblitz.rds")