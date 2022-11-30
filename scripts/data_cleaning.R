library(tidyverse)
library(dplyr)

preprocessing = function(n){
  
  data=read.csv("data/raw/runs.csv")
  
  randomNum = sample(1:nrow(data), n)
  result =data %>% 
    select(c(race_id,won,horse_age,horse_rating, horse_country,horse_type,
             declared_weight, actual_weight,draw)) %>%
    mutate(r = c(1:nrow(data)))%>%
    mutate(won=factor(won))%>%
    mutate(horse_country=factor(horse_country))%>%
    mutate(horse_type=factor(horse_type))%>%
    mutate(horse_type=factor(horse_type))%>%
    filter(r %in% randomNum)%>%
    select(-race_id)
  return(result)
}

