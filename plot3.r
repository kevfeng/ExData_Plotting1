setwd("C:/Users/Kevin Feng/Documents/R")
data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
data <- na.omit(data)
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
data$Date <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png", width = 480, height = 480, bg = NA)

plot(data$Date, data$Sub_metering_1, 'l', xlab = "", ylab = "Energy sub metering")
lines(data$Date, data$Sub_metering_2, col = "red")
lines(data$Date, data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, col = c("black", "blue", "red"))

dev.off()