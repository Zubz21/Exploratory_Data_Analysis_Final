library(ggplot2)
library(RColorBrewer)

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

totalNEI <- aggregate(Emissions ~ year, NEI, sum)

plot(totalNEI$year, totalNEI$Emissions, type = "o", col = "steelblue3",main = expression("Total US "~ PM[2.5]~ "Emissions by Year"),ylab = expression("Total US "~   PM[2.5] ~ "Emissions"), xlab = "Year")


