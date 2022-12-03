library(boot)

origin=read.csv("data/raw/runs.csv")
n=500
# randomly select n rows from the original dataset
randomNum = sample(1:nrow(origin), n)
result =origin %>% 
  # only contains numerical predictor
  select(c(race_id,won,horse_age,horse_rating,
           declared_weight, actual_weight,draw)) %>%
  mutate(r = c(1:nrow(origin)))%>%
  mutate(won=factor(won))%>%
  filter(r %in% randomNum)%>%
  select(-race_id)
data=result
# We can also use bootstrapping to estimate the model coefficients for linear regression
# We build a logistic regression model to predict whether a horse will win in a race, using age, rating, declared weight, actual weight, and draw as predictors


# Similar to the basic use of bootstrapping for sample statistics, we need to first create a function for the statistics that we are interested in. Since we are interested in whether a horse can win in the race, the response variable is binary, we use glm() function with parameter family = "binomial"to do a logistic regression. The other difference should be changing the returns for the function to be the coefficients of each fits. 
bs <- function(formula, data, indices) {
  d <- data[indices,] # allows boot to select sample
  fit <- glm(formula, data=d,family = "binomial")
  return(coef(fit))
}
# re-sample for 10000 times
results_10000 <- boot(data=data, statistic=bs,
                R=10000, formula=won~horse_age+horse_rating+
                declared_weight+ actual_weight+draw)
results_10000

similar
par(mfrow = c(4,3))
plot(results_10000, index=1) 
plot(results_10000, index=2)
plot(results_10000, index=3)
plot(results_10000, index=4) 
plot(results_10000, index=5)
plot(results_10000, index=6)

