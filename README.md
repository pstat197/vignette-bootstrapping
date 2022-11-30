# vignette-bootstrapping

Vignette on bootstrapping with a logistic regression model on horse races in Hong Kong; created as a class project for PSTAT 197A in Fall 2022.

Contributors: Yujie Li, Aria Kajeh, Evan Ji, William Long

## Description

Bootstrapping is a statistical technique used for estimating population statistics using just the data from one representative sample. Since one sample can only provide one estimate for a particular population statistic, we cannot obtain any sense of variance from using just that one sample. Bootstrapping is the process of resampling with replacement from the original sample to obtain more representative samples of the population and allows us to generate a distribution of estimates. This makes it easier for us to perform hypothesis tests and construct confidence intervals, as well as helping us to make better inferences about the whole population.

### Abstract

For our vignette, we will be using the example data listed below to perform logistic regression to attempt to predict whether a horse will win its race or not. Bootstrapping will be used to estimate population means for certain variables(e.g. weight and age) and improve the inferential usefulness of our model(s). We will also use bootstrapping to aid us in validating the predictive accuracy of our model. 

### Example Data

The example data we used is a Kaggle dataset containing information from throughbred races conducted by the Hong Kong Jockey Club from 6/1/1997 - 08/27/2005 (https://www.kaggle.com/datasets/gdaley/hkracing). In particular we are looking at the runs.csv file which contains information from specific horse runs in each race.

#### Variable descriptions
race_id: Unique identifier for a race

horse_id: Unique identifer for the horse

won: Binary variable representing whether a horse won(1) or lost(0)

horse_age: Current age of the horse at the time of the race.

horse_country: Country of origin of the horse

horse_type: Sex of the horse (e.g. "Gelding", "Mare", etc...)

horse_rating: Rating number assigned by the Hong Kong Jockey Club

declared_weight: Declared weight of the horse and jockey in lbs

actual_weight: Actual weight carried by the horse. Does not include weight of the horse

draw: Post position number of the horse in the race.

finish_time: Finishing time of the horse in this race in seconds.

win_odds: Win odds for this horse at the start of the race.

place_odds: Odds for finishing in 1st, 2nd, or 3rd at the start of the race.

trainer_id: Unique identifier of the horse's trainer at the time of the race

jockey_id: Unique identifier of the jockey riding the horse in this race.

### Outcomes

By the end of this vignette, students should have learned how to bootstrap a distribution of sample statistics from one representative sample of a population. 

Students should also be able to construct confidence intervals from the distributions obtained from bootstrapping and be able to use that inferential knowledge to build more accurate regression models. 


## Contents

Our data/raw folder contains the .csv files from the original Kaggle dataset. We are mainly focused on runs.csv which contains information about individual horse performances in the Hong Kong races. 


The scripts folder contains our preprocessing scripts for reading and cleaning the data, exploratory data analysis, and our regression models. 

Our results folder contains our drafts, writeups, and conclusions for the vignette.





## Reference list

[Add more references here as needed]

MDSR 9.3 (https://mdsr-book.github.io/mdsr2e/ch-foundations.html#sec:boot)



