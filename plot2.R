
## plot2 for Q2: decreasing
## turn on png
png(filename = "plot2.png", width = 600, height = 600, units = "px")
## plot2
EbyY_B <- NEI %>% filter(fips == "24510") %>% group_by(year) %>% summarise(Emissions = sum(Emissions))
with(EbyY_B, plot(year, Emissions/1000, type = "l", ylab = "Emissions (Thousand Tons)", main = "Baltimore City Emission by year"))
## turn off dev
dev.off()