# Two Week lag
mal2W$sqrtRain <- sqrt(mal2W$rainTotLAG2W)

# LINEAR
linear <- lm(cpt ~ sqrtRain + Region, data = mal2W)
rss2 <- c(crossprod(linear$residuals))
mse2 <- rss2/length(linear$residuals)
rmse2 <- sqrt(mse2)

#POISSON
pois <- lm(cpt ~ sqrtRain * Region, data = mal2W)
rss2.2 <- c(crossprod(pois$residuals))
mse2.2 <- rss2.2/length(pois$residuals)
rmse2.2 <- sqrt(mse2.2)



# Four Week lag
mal4W$sqrtRain <- sqrt(mal4W$rainTotLAG4W)

# LINEAR
linear <- lm(cpt ~ sqrtRain + Region, data = mal4W)
rss4 <- c(crossprod(linear$residuals))
mse4 <- rss4/length(linear$residuals)
rmse4 <- sqrt(mse4)

pois <- lm(cpt ~ sqrtRain * Region, data = mal4W)
rss4.2 <- c(crossprod(lm2$residuals))
mse4.2 <- rss4.2/length(lm2$residuals)
rmse4.2 <- sqrt(mse4.2)



# Eight Week lag
mal8W$sqrtRain <- sqrt(mal8W$rainTotLAG8W)

#POISSON
pois <- lm(cpt ~ sqrtRain * Region, data = mal8W)
rss8.2 <- c(crossprod(pois$residuals))
mse8.2 <- rss8.2/length(pois$residuals)
rmse8.2 <- sqrt(mse8.2)