## Example plots for workshop users - 11/7/23

############################### 1) localized map
###############################
###############################
###############################

library(tidyverse)
library(leaflet)

leaflet() %>%
  addTiles() %>%  
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R") ## location/popup to your desired

############################### 2) Day/night indicator 
###############################
###############################
###############################

library(tidyverse)
library(leaflet)

leaflet() %>%
  addTiles() %>%  
  addTerminator() ## day/night indicator

############################### 3) minimap (inset)
###############################
###############################
###############################

library(tidyverse)
library(leaflet)

leaflet() %>% setView(0,0,3) %>%
  addProviderTiles(providers$Esri.WorldStreetMap) %>%
  addMiniMap()

############################### 4) different backgrounds 
###############################
###############################
###############################

library(tidyverse)
library(leaflet)

leaflet() %>%
  addProviderTiles("Esri.NatGeoWorldMap") %>%
  setView(0,0,3)

############################### 5) find me
###############################
###############################
###############################

library(tidyverse)
library(leaflet)
library(htmltools)
library(htmlwidgets)

leaflet() %>%
  addTiles() %>%  
   addEasyButton(easyButton(
    icon="fa-crosshairs", title="WheremIat?",
    onClick=JS("function(btn, map){ map.locate({setView: true}); }")))


################################################################################
################################################################################
################################################################################
#########################Penguins###############################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################

library(palmerpenguins)
library(ggplot2)

ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point(aes(color = species, 
                 shape = species),
             size = 2) + 
  geom_smooth(method = "lm", se = FALSE, aes(color = species)) +
  scale_color_manual(values = c("darkorange","darkorchid","cyan4"))
