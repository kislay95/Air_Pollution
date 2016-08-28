# set working directory to the place where rds files exists.

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

agg <- aggregate(Emissions ~ year, NEI, sum)
barplot((agg$Emissions)/1000,names.arg = agg$year, xlab = "Year", ylab = "Pm2.5 Emission(In Kilo Tons)", main = "Pm2.5 Emission from all Sources")