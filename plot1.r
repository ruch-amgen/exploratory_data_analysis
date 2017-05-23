setwd("C:/Users/ruch/Documents/Coursera/Course_4/Week1")
household_power_consumption <- read.table("household_power_consumption.txt", header = TRUE, sep=";", stringsAsFactors=FALSE, dec=".")


feb_household_power_consumption <- household_power_consumption[as.Date(household_power_consumption$Date, format = "%d/%m/%Y" ) >= "2007-02-01" & as.Date(household_power_consumption$Date, format = "%d/%m/%Y") <= "2007-02-02",]

globalActivePower <- as.numeric(feb_household_power_consumption$Global_active_power)

png("plot1.png", width=480, height=480)

hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()