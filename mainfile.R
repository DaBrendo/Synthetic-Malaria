library(tidyverse)
library(modelr)

malload = read.csv("./MozSyntheticMalaria.csv")

mozmal = subset(malload, Epiyear!=2017)

mozmal$cpt = (mozmal$malaria / (mozmal$Population_UN * mozmal$u5weight)) * 1000

mal2W <- mal4W <- mal8W <- mozmal

mal2W = mal2W %>%
  arrange(Epiyear) %>%
  group_by(District) %>%
  mutate(
  rainLAG2W = lag(rain, 2, order_by = District),
  rainTotLAG2W = lag(rainTot, 2, order_by = District),
  tavgLAG2W = lag(tavg, 2, order_by = District),
  rhLAG2W = lag(rh, 2, order_by = District),
  sdLAG2W = lag(sd, 2, order_by = District),
  psfcLAG2W = lag(psfc, 2, order_by = District),
  tabove30LAG2W = lag(tabove30, 2, order_by = District),
  tabove35LAG2W = lag(tabove35, 2, order_by = District),
  tbelow20LAG2W = lag(tbelow20, 2, order_by = District),
  tbelow15LAG2W = lag(tbelow15, 2, order_by = District),
  pabove1LAG2W = lag(pabove1, 2, order_by = District),
  pabove50LAG2W = lag(pabove50, 2, order_by = District),
  pabove100LAG2W = lag(pabove100, 2, order_by = District)) %>%
  drop_na()

mal4W = mal4W %>%
  arrange(Epiyear) %>%
  group_by(District) %>%
  mutate(
  rainLAG4W = lag(rain, 4, order_by = District),
  rainTotLAG4W = lag(rainTot, 4, order_by = District),
  tavgLAG4W = lag(tavg, 4, order_by = District),
  rhLAG4W = lag(rh, 4, order_by = District),
  sdLAG4W = lag(sd, 4, order_by = District),
  psfcLAG4W = lag(psfc, 4, order_by = District),
  tabove30LAG4W = lag(tabove30, 4, order_by = District),
  tabove35LAG4W = lag(tabove35, 4, order_by = District),
  tbelow20LAG4W = lag(tbelow20, 4, order_by = District),
  tbelow15LAG4W = lag(tbelow15, 4, order_by = District),
  pabove1LAG4W = lag(pabove1, 4, order_by = District),
  pabove50LAG4W = lag(pabove50, 4, order_by = District),
  pabove100LAG4W = lag(pabove100, 4, order_by = District)) %>%
  drop_na()

mal8W = mal8W %>%
  arrange(Epiyear) %>%
  group_by(District) %>%
  mutate(
  rainLAG8W = lag(rain, 8, order_by = District),
  rainTotLAG8W = lag(rainTot, 8, order_by = District),
  tavgLAG8W = lag(tavg, 8, order_by = District),
  rhLAG8W = lag(rh, 8, order_by = District),
  sdLAG8W = lag(sd, 8, order_by = District),
  psfcLAG8W = lag(psfc, 8, order_by = District),
  tabove30LAG8W = lag(tabove30, 8, order_by = District),
  tabove35LAG8W = lag(tabove35, 8, order_by = District),
  tbelow20LAG8W = lag(tbelow20, 8, order_by = District),
  tbelow15LAG8W = lag(tbelow15, 8, order_by = District),
  pabove1LAG8W = lag(pabove1, 8, order_by = District),
  pabove50LAG8W = lag(pabove50, 8, order_by = District),
  pabove100LAG8W = lag(pabove100, 8, order_by = District)) %>%
  drop_na()


mozmal %>%
  group_by(Region) %>%
  summarise(sum(malaria))
mozmal %>%
  group_by(Region) %>%
  summarise(mean(tavg))
mozmal %>%
  group_by(Region) %>%
  summarise(mean(rainTot))