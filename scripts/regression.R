library(boot)

bs <- function(formula, data, indices) {
  d <- data[indices,] # allows boot to select sample
  fit <- lm(formula, data=d)
  return(coef(fit))
}

results <- boot(data=result, statistic=bs,
                R=1000, formula=won~horse_age+horse_country+horse_type)


results
plot(results)

# get 95% confidence interval
boot.ci(results, type="bca")


# functionmean <- function(data,i){
#   dataframe1<-data[i,] #this step is used for indexing row
#   return(mean(dataframe1$declared_weight))
# }
# 
# b=boot(result,functionmean,R=1000)
# mean(result$declared_weight)
# b$t0
# mean(b$t)
# b
