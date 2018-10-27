mozmal %>%
  group_by(Region) %>%
  summarise(sum(cpt))
mozmal %>%
  group_by(Region) %>%
  summarise(mean(tavg))
mozmal %>%
  group_by(Region) %>%
  summarise(mean(rainTot))

mozmal %>%
  group_by(Region) %>%
  summarise(sum(tabove30))
mozmal %>%
  group_by(Region) %>%
  summarise(sum(tabove35))
mozmal %>%
  group_by(Region) %>%
  summarise(sum(tbelow15))

mozmal %>%
  group_by(Region) %>%
  summarise(var(cpt))
mozmal %>%
  group_by(Region) %>%
  summarise(var(tavg))
mozmal %>%
  group_by(Region) %>%
  summarise(var(rainTot))