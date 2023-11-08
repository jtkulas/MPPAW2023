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
  geom_point(aes(color = species, shape = species, size = body_mass_g), alpha=.5) + 
  scale_size(range = c(.1, 5)) +
  scale_color_manual(values = c("#210a3c","#5e1b60","#c44da2"))   ## https://www.color-hex.com/color-palette/1036820

################################################################################
################################################################################
################################################################################
 
library(palmerpenguins)
library(ggplot2)
library(plotly)

plot_ly(data = penguins, x = ~bill_length_mm, y = ~bill_depth_mm, color = ~species, size = ~body_mass_g, text = ~island, alpha=.7)

################################################################################
################################################################################
################################################################################

library(ggalluvial)

ggplot(as.data.frame(penguins),
       aes(y = bill_length_mm, axis1 = island, axis2 = species)) +
  geom_alluvium(aes(fill = sex), width = 1/12) +
  geom_stratum(width = 1/12, fill = "black", color = "grey") +
  geom_label(stat = "stratum", aes(label = after_stat(stratum))) +
  scale_x_discrete(limits = c("Island", "Species"), expand = c(.05, .05)) +
  scale_fill_brewer(type = "qual", palette = "Set1") 

################################################################################
################################################################################
################################################################################

library(ggalluvial)

ggplot(as.data.frame(penguins),
       aes(y = body_mass_g, axis1 = sex, axis2 = island)) +
  geom_alluvium(aes(fill = species), width = 1/12) +
  geom_stratum(width = 1/12, fill = "black", color = "grey") +
  geom_label(stat = "stratum", aes(label = after_stat(stratum))) +
  scale_x_discrete(limits = c("Gender", "Island"), expand = c(.05, .05)) +
  scale_fill_brewer(type = "qual", palette = "Set1") 

