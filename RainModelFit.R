# Compare linear model across various covariates
mal2W$sqrtRain <- sqrt(mal2W$rainTotLAG2W)

# # LM
# lm1 <- lm(cpt ~ sqrtRain + Region, data = mal2W)
# names(lm1)
# # RMSE estimate
# rss2 <- c(crossprod(lm1$residuals))
# mse2 <- rss/length(lm1$residuals)
# rmse2 <- sqrt(mse)
# rmse2
# # Pearson estimated residual variance (as returned by summary.lm):
# sig2 <- rss/lm1$df.residual
# sig2

lm2 <- lm(cpt ~ sqrtRain * Region, data = mal2W)
names(lm2)
# RMSE estimate
rss2.2 <- c(crossprod(lm2$residuals))
mse2.2 <- rss2.2/length(lm2$residuals)
rmse2.2 <- sqrt(mse2.2)
rmse2.2
# Pearson estimated residual variance (as returned by summary.lm):
sig2.2 <- rss2.2/lm2$df.residual
sig2.2


# Compare linear model across various covariates
mal4W$sqrtRain <- sqrt(mal4W$rainTotLAG4W)
# 
# # LM
# lm1 <- lm(cpt ~ sqrtRain + Region, data = mal4W)
# names(lm1)
# # RMSE estimate
# rss4 <- c(crossprod(lm1$residuals))
# mse4 <- rss/length(lm1$residuals)
# rmse4 <- sqrt(mse)
# rmse4
# # Pearson estimated residual variance (as returned by summary.lm):
# sig4 <- rss/lm1$df.residual
# sig4

lm2 <- lm(cpt ~ sqrtRain * Region, data = mal4W)
names(lm2)
# RMSE estimate
rss4.2 <- c(crossprod(lm2$residuals))
mse4.2 <- rss4.2/length(lm2$residuals)
rmse4.2 <- sqrt(mse4.2)
rmse4.2
#Pearson estimated residual variance (as returned by summary.lm):
sig4.2 <- rss4.2/lm2$df.residual
sig4.2


# Compare linear model across various covariates
mal8W$sqrtRain <- sqrt(mal8W$rainTotLAG8W)

lm2 <- lm(cpt ~ sqrtRain * Region, data = mal8W)
names(lm2)
# RMSE estimate
rss8.2 <- c(crossprod(lm2$residuals))
mse8.2 <- rss8.2/length(lm2$residuals)
rmse8.2 <- sqrt(mse8.2)
rmse8.2
#Pearson estimated residual variance (as returned by summary.lm):
sig8.2 <- rss8.2/lm2$df.residual
sig8.2
