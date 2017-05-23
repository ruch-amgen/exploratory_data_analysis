setwd("C:/Users/ruch/Documents/Coursera/Course_4/Week1")
household_power_consumption <- read.table("household_power_consumption.txt", header = TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

feb_household_power_consumption <- household_power_consumption[as.Date(household_power_consumption$Date, format = "%d/%m/%Y" ) >= "2007-02-01" & as.Date(household_power_consumption$Date, format = "%d/%m/%Y") <= "2007-02-02",]

datetime <- strptime(paste(feb_household_power_consumption$Date, feb_household_power_consumption$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)

plot(datetime,as.numeric(feb_household_power_consumption$Global_active_power), type = "l", ylab = "Global Actie Power(kilowatts)", xlab = "")

dev.off()