## Filter SCC as Coal Combustion Related
SCCMV <- SCC[grep("Mobile - On-Road", SCC$EI.Sector) , 1]
## plot5 for Q5: decreasing
## turn on png
png(filename = "plot5.png", width = 600, height = 600, units = "px")
## plot2
EbyY_MVB <- NEI %>% filter(fips == "24510" & SCC %in% SCCMV) %>% group_by(year) %>% summarise(Emissions = sum(Emissions))
with(EbyY_MVB, plot(year, Emissions/1000, type = "l", ylab = "Emissions (Thousand Tons)", main = "Baltimore City Motor Vehical Emission by year"))
## turn off dev
dev.off()