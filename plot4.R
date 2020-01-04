## Filter SCC as Coal Combustion Related
SCCCoal <- SCC[grep("Coal", SCC$EI.Sector) , 1]
## plot4 for Q4: decreasing
## turn on png
png(filename = "plot4.png", width = 600, height = 600, units = "px")
## plot1
EbyY_CC <- NEI %>% filter(SCC %in% SCCCoal) %>% group_by(year) %>% summarise(Emissions = sum(Emissions))
with(EbyY_CC, plot(year, Emissions/1000000, type = "l", ylab = "Emissions (Million Tons)", main = "United States Coal Combustion Related Emission by year"))
## turn off dev
dev.off()