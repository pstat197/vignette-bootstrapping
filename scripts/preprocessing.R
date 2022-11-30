library(dplyr)
runsdata <- read.csv('~/Github/vignette-bootstrapping/data/raw/runs.csv') %>% head(500)
weightestimate <- runsdata %>% select(horse_age,declared_weight,actual_weight) %>% head(500)
