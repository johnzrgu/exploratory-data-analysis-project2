## plot3 for Q3: POINT
## turn on png
png(filename = "plot3.png", width = 600, height = 600, units = "px")
## plot3
EbyY_BT <- NEI %>% filter(fips == "24510") %>% group_by(year, type) %>% summarise(Emissions = sum(Emissions))
qplot(year, Emissions/1000, data = EbyY_BT, facets = .~type, ylab = "Emissions (Thoursand Tons)", main = "Baltimore City Emmision by year by type")
## turn off dev
dev.off()