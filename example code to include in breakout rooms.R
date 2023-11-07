## Example plots for workshop users - 11/7/23

library(tidyverse)
library(leaflet)

############################### 1) localized map

leaflet() %>%
  addTiles() %>%  
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R") ## location/popup to your desired

############################### 2) Day/night indicator 

leaflet() %>%
  addTiles() %>%  
  addTerminator() ## day/night indicator

############################### 3) minimap (inset)

leaflet() %>% setView(0,0,3) %>%
  addProviderTiles(providers$Esri.WorldStreetMap) %>%
  addMiniMap()

############################### 4) different backgrounds 

leaflet() %>%
  addProviderTiles("Esri.NatGeoWorldMap") %>%
  setView(0,0,3)

############################### 5) find me

library(htmltools)
library(htmlwidgets)

leaflet() %>%
  addTiles() %>%  
   addEasyButton(easyButton(
    icon="fa-crosshairs", title="WheremIat?",
    onClick=JS("function(btn, map){ map.locate({setView: true}); }")))

