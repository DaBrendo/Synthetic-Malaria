

# # LM
# lm1 <- lm(cpt ~ tavgLAG2W + Region, data = mal2W)
# names(lm1)
# # RMSE estimate
# rss2 <- c(crossprod(lm1$residuals))
# mse2 <- rss2/length(lm1$residuals)
# rmse2 <- sqrt(mse2)
# rmse2
# # Pearson estimated residual variance (as returned by summary.lm):
# sig2 <- rss2/lm1$df.residual
# sig2

lm2 <- lm(cpt ~ tavgLAG2W * Region, data = mal2W)
names(lm2)
# RMSE estimate
rss2.2 <- c(crossprod(lm2$residuals))
mse2.2 <- rss2.2/length(lm2$residuals)
rmse2.2 <- sqrt(mse2.2)
rmse2.2
# Pearson estimated residual variance (as returned by summary.lm):
sig2.2 <- rss2.2/lm2$df.residual
sig2.2



# # LM
# lm1 <- lm(cpt ~ tavgLAG4W + Region, data = mal4W)
# names(lm1)
# # RMSE estimate
# rss4 <- c(crossprod(lm1$residuals))
# mse4 <- rss4/length(lm1$residuals)
# rmse4 <- sqrt(mse4)
# rmse4
# # Pearson estimated residual variance (as returned by summary.lm):
# sig4 <- rss/lm1$df.residual
# sig4

lm2 <- lm(cpt ~ tavgLAG4W * Region, data = mal4W)
names(lm2)
# RMSE estimate
rss4.2 <- c(crossprod(lm2$residuals))
mse4.2 <- rss4.2/length(lm2$residuals)
rmse4.2 <- sqrt(mse4.2)
rmse4.2
#Pearson estimated residual variance (as returned by summary.lm):
sig4.2 <- rss4.2/lm2$df.residual
sig4.2



lm2 <- lm(cpt ~ tavgLAG8W * Region, data = mal8W)
names(lm2)
# RMSE estimate
rss8.2 <- c(crossprod(lm2$residuals))
mse8.2 <- rss8.2/length(lm2$residuals)
rmse8.2 <- sqrt(mse8.2)
rmse8.2
#Pearson estimated residual variance (as returned by summary.lm):
sig8.2 <- rss8.2/lm2$df.residual
sig8.2
