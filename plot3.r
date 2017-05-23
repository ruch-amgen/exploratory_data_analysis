setwd("C:/Users/ruch/Documents/Coursera/Course_4/Week1")
household_power_consumption <- read.table("household_power_consumption.txt", header = TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

feb_household_power_consumption <- household_power_consumption[as.Date(household_power_consumption$Date, format = "%d/%m/%Y" ) >= "2007-02-01" & as.Date(household_power_consumption$Date, format = "%d/%m/%Y") <= "2007-02-02",]

datetime <- strptime(paste(feb_household_power_consumption$Date, feb_household_power_consumption$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot3.png", width=480, height=480)

plot(datetime,as.numeric(feb_household_power_consumption$Sub_metering_1), type = "l", ylab = "Energy sub metering", xlab = "")
lines(datetime,as.numeric(feb_household_power_consumption$Sub_metering_2), col = "red" )
lines(datetime,as.numeric(feb_household_power_consumption$Sub_metering_3), col = "blue")

legend("topright", "(x,y)",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1,1,1), lwd = c(2.5,2.5,2.5), col = c("black", "red","blue"), bty = "n")


dev.off()