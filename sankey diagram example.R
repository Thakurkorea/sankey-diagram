# install.packages("networkD3")
# install.packages("d3heatmap")
library(networkD3)

URL <- paste0('https://cdn.rawgit.com/christophergandrud/networkD3/',
              'master/JSONdata/energy.json')
energy <- jsonlite::fromJSON(URL)

energy$links$energy_type <- sub(' .*', '', energy$nodes[energy$links$source + 1, 'name'])


sankeyNetwork(Links = energy$links, Nodes = energy$nodes, Source = 'source',
              Target = 'target', Value = 'value', NodeID = 'name',
              LinkGroup = 'energy_type')





