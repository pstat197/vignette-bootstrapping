library(tidyverse)
library(dplyr)


preprocessing = function(n){
  
  data=read.csv("../data/raw/runs.csv")
  # randomly select n rows from the original dataset
  randomNum = sample(1:nrow(data), n)
  result =data %>% 
    # only contains numerical predictor
    select(c(race_id,won,horse_age,horse_rating,
             declared_weight, actual_weight,draw)) %>%
    mutate(r = c(1:nrow(data)))%>%
    mutate(won=factor(won))%>%
    filter(r %in% randomNum)%>%
    select(-race_id)
  return(result)
}

