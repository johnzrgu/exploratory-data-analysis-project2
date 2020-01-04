##install packages and load
install.packages("dplyr")
install.packages("tidyr")
install.packages("readr")
install.packages("ggplot2")
library(dplyr)
library(tidyr)
library(readr)
library(ggplot2)
## Download and unzip file
Origin_dir <- getwd()
if(!file.exists('NEI_data.zip')){
  download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip', 'NEI_data.zip')
}

unzip('NEI_data.zip')

## read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## plot1 for Q1: decreasing
## turn on png
png(filename = "plot1.png", width = 600, height = 600, units = "px")
## plot1
EbyY <- NEI %>% group_by(year) %>% summarise(Emissions = sum(Emissions))
with(EbyY, plot(year, Emissions/1000000, type = "l", ylab = "Emissions (Million Tons)", main = "United States Emission by year"))
## turn off dev
dev.off()