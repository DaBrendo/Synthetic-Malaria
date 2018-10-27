#temp below 20
#2 weeks
#POISSON
lm2 <- lm(cpt ~ tbelow20LAG2W * Region, data = mal2W)
rss2.2 <- c(crossprod(lm2$residuals))
mse2.2 <- rss2.2/length(lm2$residuals)
rmse2.2 <- sqrt(mse2.2)


#2 weeks
#POISSON
lm2 <- lm(cpt ~ tbelow20LAG4W * Region, data = mal4W)
rss4.2 <- c(crossprod(lm2$residuals))
mse4.2 <- rss4.2/length(lm2$residuals)
rmse4.2 <- sqrt(mse4.2)


#2 weeks
#POISSON
lm2 <- lm(cpt ~ tbelow20LAG8W * Region, data = mal8W)
rss8.2 <- c(crossprod(lm2$residuals))
mse8.2 <- rss8.2/length(lm2$residuals)
rmse8.2 <- sqrt(mse8.2)