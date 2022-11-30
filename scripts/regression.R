library(boot)

source("scripts/data_cleaning.R")
data=preprocessing(500)

bs <- function(formula, data, indices) {
  d <- data[indices,] # allows boot to select sample
  fit <- glm(formula, data=d,family = "binomial")
  return(coef(fit))
}

results <- boot(data=data, statistic=bs,
                R=1000, formula=won~horse_age+horse_rating+
                declared_weight+ actual_weight+draw)


results
plot(results, index=1) 
plot(results, index=2) 
plot(results, index=3) 
plot(results, index=4) 
plot(results, index=5) 
plot(results, index=6)


# get 95% confidence interval
boot.ci(results, type="bca",index=1)
boot.ci(results, type="bca",index=2)
boot.ci(results, type="bca",index=3)
boot.ci(results, type="bca",index=4)
boot.ci(results, type="bca",index=5)
boot.ci(results, type="bca",index=6)








