library(boot)

origin=read.csv("data/raw/runs.csv")
source("scripts/data_cleaning.R")
data=preprocessing(500)


# We can also use bootstrapping to estimate the model coeficients for linear regression
# We build a logistic regression model to predict whether a horse will win in a race, using age, rating, declared weight, actual weight, and draw as predictors
# This is similar to bootstrapping for sample statistics, the only difference should be changing the returns for the function to be the coeficients of each fits. 
bs <- function(formula, data, indices) {
  d <- data[indices,] # allows boot to select sample
  fit <- glm(formula, data=d,family = "binomial")
  return(coef(fit))
}
# re-sample for 10000 times
results_10000 <- boot(data=data, statistic=bs,
                R=10000, formula=won~horse_age+horse_rating+
                declared_weight+ actual_weight+draw)
results
plot(results_10000, index=1) 
plot(results_10000, index=2)
plot(results_10000, index=3)
plot(results_10000, index=4) 
plot(results_10000, index=5)
plot(results_10000, index=6)

