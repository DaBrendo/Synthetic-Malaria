

poly1 = readShapeSpatial("Mozambique_admin1.shp", IDvar = "NAME1")
mapmal = mozmal
mapmal$Province = fct_collapse(mapmal$Province, 
                                   Maputo = c("MAPUTO", "MAPUTO CIDADE"),
                                   "Cabo Delgado" = c("CABO DELGADO"),
                                   Gaza = c("GAZA"),
                                   Inhambane = c("INHAMBANE"),
                                   Manica = c("MANICA"),
                                   Nampula = c("NAMPULA"),
                                   Niassa = c("NIASSA"),
                                   Sofala = c("SOFALA"),
                                   Tete = c("TETE"),
                                   Zambezia = c("ZAMBEZIA")
)

excpt = as.data.frame(tapply(mapmal$malaria, list(mapmal$Province), sum))
exrainTot = as.data.frame(tapply(mapmal$rainTot, list(mapmal$Province), sum))
extavg = as.data.frame(tapply(mapmal$tavg, list(mapmal$Province), sum))


plotstats = as.data.frame(cbind(excpt, exrainTot, extavg))
colnames(plotstats) = c("Cases", "Rainfall", "Temperature")
mapdat = SpatialPolygonsDataFrame(poly1, plotstats)

spplot(mapdat, "Cases", main = "Total Cases under 5")

spplot(mapdat, "Rainfall", main = "Total Rainfall")

spplot(mapdat, "Temperature", main = "Average Temperature")