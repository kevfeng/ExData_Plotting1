setwd("C:/Users/Kevin Feng/Documents/R")
data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
data <- na.omit(data)
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
data$Date <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png", width = 480, height = 480, bg = NA)

plot(data$Date, data$Global_active_power, "l", xlab = "", ylab = "Global Active Power")

dev.off()