## Example plots for Breakout rooms #2

library(palmerpenguins)
library(ggplot2)

ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point(aes(color = species, shape = species, size = body_mass_g), alpha=.5) + 
  scale_size(range = c(.1, 5)) +
  scale_color_manual(values = c("#210a3c","#5e1b60","#c44da2"))   ## https://www.color-hex.com/color-palette/1036820

################################################################################
####################################################################
 
library(palmerpenguins)
library(ggplot2)
library(plotly)

plot_ly(data = penguins, x = ~bill_length_mm, y = ~bill_depth_mm, color = ~species, size = ~body_mass_g, text = ~island, alpha=.7)

################################################################################
####################################################################

library(ggalluvial)
library(ggplot2)

ggplot(as.data.frame(penguins),
       aes(y = bill_length_mm, axis1 = island, axis2 = species)) +
  geom_alluvium(aes(fill = sex), width = 1/12) +
  geom_stratum(width = 1/12, fill = "black", color = "grey") +
  geom_label(stat = "stratum", aes(label = after_stat(stratum))) +
  scale_x_discrete(limits = c("Island", "Species"), expand = c(.05, .05)) +
  scale_fill_brewer(type = "qual", palette = "Set1") 

################################################################################
####################################################################

library(ggalluvial)
library(ggplot2)

ggplot(as.data.frame(penguins),
       aes(y = body_mass_g, axis1 = sex, axis2 = island)) +
  geom_alluvium(aes(fill = species), width = 1/12) +
  geom_stratum(width = 1/12, fill = "black", color = "grey") +
  geom_label(stat = "stratum", aes(label = after_stat(stratum))) +
  scale_x_discrete(limits = c("Gender", "Island"), expand = c(.05, .05)) +
  scale_fill_brewer(type = "qual", palette = "Set1") 

