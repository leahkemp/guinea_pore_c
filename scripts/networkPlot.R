library(igraph)
library(networkD3)
library(tidyverse)
library(dplyr)

contacts <- read_tsv("/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c/results/04_pore_c_snakemake_pipeline_run/pipeline_run/pairs/NlaIII_run01_Cavpor3.0_unphased.unsorted.pairs",
                     comment="#",
                     col_names = c("readID", "chr1","pos1","chr2","pos2", "strand1", "strand2", "pair_type", "align1_idx", "align2_idx", "distance_on_read")
)



dirty1 <- contacts %>% 
  count(chr1, pos1) %>% 
  filter(n >= 10000)
dirty2 <- contacts %>% 
  count(chr2, pos2) %>% 
  filter(n >= 10000)

dirty_scaffolds <- c( "NT_176409.1", "NT_176419.1", "NT_176417.1", "NT_176416.1", "NT_176418.1")

cleaner <- contacts %>% 
  filter(!pos1 %in% dirty1$pos1, !pos2 %in% dirty1$pos1 ) %>% 
  filter(! chr1 %in% dirty_scaffolds, ! chr2 %in% dirty_scaffolds)



within <- cleaner %>% 
  filter(chr1 == chr2) %>%
  count(chr1) %>% 
  plyr::rename( c(n="weigth", chr1="node"))
#, "chr1"="node")


# NEED TO group by position first?

between <- cleaner %>% 
  filter(chr1 != chr2) %>%
  filter(strand1 == strand2) %>% 
  count(chr1, chr2) %>% 
  filter(n >= 400) %>%
  filter(n <= 4000) %>%
  plyr::rename( c(n="strength"))


# create a test dataset:
data <- data.frame(
  from=between$chr1,
  to=between$chr2
)

# Plot
p <- simpleNetwork(data, height="100px", width="100px",
                   linkDistance = 10,          # distance between node. Increase this value to have more space between nodes
                   charge = -900,              # numeric value indicating either the strength of the node repulsion (negative value) or attraction (positive value)
                   fontSize = 20,              # size of the node names
                   fontFamily = "serif",       # font og node names
                   linkColour = "#666",        # colour of edges, MUST be a common colour for the whole graph
                   nodeColour = "#69b3a2",     # colour of nodes, MUST be a common colour for the whole graph
                   opacity = 0.9,              # opacity of nodes. 0=transparent. 1=no transparency
                   zoom = T                    # Can you zoom on the figure
)
p





F2 <- colorRampPalette(c("#FFFF00", "#FF0000"), bias=nrow(within), space = "rgb", interpolate = "linear")


D3_network_LM <- networkD3::forceNetwork(
  Links = data.frame(between), 
  Nodes = data.frame(within), 
  
  Source="chr1", Target="chr2", Value="strength", 
  NodeID="node", Nodesize="weigth", 
  Group ="node", 
  height = 500, 
  width = 1000, 
  
  fontSize = 20, 
  linkDistance = networkD3::JS("function(d) { return 10*d.value; }"), 
  linkWidth    = networkD3::JS("function(d) { return d.value/5; }"),
  opacity = 0.85, 
  zoom = TRUE, 
  opacityNoHover = 0.1,
  linkColour = "black"
)
#, linkColour = edges_col)

#To see the network we created, we just need to type its name:

D3_network_LM



fishy <- contacts %>% 
  filter(chr1=="NT_176409.1" | chr2=="NT_176409.1") %>% 
  mutate(position=ifelse(chr1=="NT_176409.1", pos1, pos2)) %>% 
  filter(position >= 4661750, position <= 4661900)

plot(density(fishy$position), xlim=c(4661750,4661900))

heatmap(table(between$chr1, between$chr2))
#heatmap(table(cleaner$chr1, cleaner$chr2))

