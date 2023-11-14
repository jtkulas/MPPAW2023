## Example plots for workshop users - First Breakout Room

############################### 1) localized map

library(tidyverse)
library(leaflet)

leaflet() %>%
  addTiles() %>%  
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R") ## location/popup to your desired

############################### 2) Day/night indicator 

library(tidyverse)
library(leaflet)

leaflet() %>%
  addTiles() %>%  
  addTerminator() ## day/night indicator

############################### 3) minimap (inset)

library(tidyverse)
library(leaflet)

leaflet() %>% setView(0,0,3) %>%
  addProviderTiles(providers$Esri.WorldStreetMap) %>%
  addMiniMap()

############################### 4) different backgrounds 

library(tidyverse)
library(leaflet)

leaflet() %>%
  addProviderTiles("Esri.NatGeoWorldMap") %>%
  setView(0,0,3)

############################### 5) find me

library(tidyverse)
library(leaflet)
library(htmltools)
library(htmlwidgets)

leaflet() %>%
  addTiles() %>%  
   addEasyButton(easyButton(
    icon="fa-crosshairs", title="WheremIat?",
    onClick=JS("function(btn, map){ map.locate({setView: true}); }")))

############################### 6) income mapped

library(leaflet)
library(tidycensus)
library(mapview)

get_acs(
  geography = "tract",
  variables = "B19013_001",        ## Median household income
  state = c("MN", "WI"),           ## WI friends included
  geometry = TRUE
) |>
  mapview::mapview(
    zcol = "estimate",
    layer.name = "Median household income"    
  )
