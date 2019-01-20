list.files(path = "./data", full.names = T)
file1 <- "./data/state_open_data.csv"
df.1 <- read.csv(file = file1, header = T, sep = ",", 
                 stringsAsFactors = F,
                 strip.white = T)
file2 <- "./data/2017_01-01_best_states_data_portal_ranking.csv"
df.2 <- read.csv(file = file2, header = T, sep = ",", 
                 stringsAsFactors = F,
                 strip.white = T)
df.3 <- merge(df.1, df.2 ) #all = T
df.4 <- dplyr::arrange(df.3, data_portal_rank)
file <- "./data/2019_state_open_data_portals_urls_&_rankings.csv"
write.csv(df.4, file = file, row.names = F)
#dropped District of Columbia and Puerto Rico
