## Filter SCC as Coal Combustion Related
SCCMV <- SCC[grep("Mobile - On-Road", SCC$EI.Sector) , 1]
## plot6 for Q6: Baltimore
## turn on png
png(filename = "plot6.png", width = 1200, height = 600, units = "px")
## plot2
EbyY_MVB <- NEI %>% filter(fips == "24510" & SCC %in% SCCMV) %>% group_by(year) %>% summarise(Emissions = sum(Emissions))
EbyY_MVLA <- NEI %>% filter(fips == "06037" & SCC %in% SCCMV) %>% group_by(year) %>% summarise(Emissions = sum(Emissions))
par(mfrow = c(1, 2))
with(EbyY_MVB, plot(year, Emissions, type = "l", ylab = "Emissions", main = "Baltimore City Motor Vehical Emission by year"))
with(EbyY_MVLA, plot(year, Emissions, type = "l", ylab = "Emissions", main = "Los Angeles Motor Vehical Emission by year"))
## turn off dev
dev.off()