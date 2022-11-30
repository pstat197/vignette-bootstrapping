library(tidyverse)
library(dplyr)

data=read.csv("data/raw/runs.csv")
result =data %>% 
  select(c(race_id,won,horse_age,horse_rating, horse_gear, horse_country,horse_type,
                  declared_weight, actual_weight,draw)) %>%
  filter(race_id<500)

