setwd("Data Science/R-Exploratory Data Analysis COURSERA")
a = read.table("household_power_consumption.txt", sep=";")
names(a) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
b <- subset(a, Date == "1/2/2007")
c <- subset(a, Date == "2/2/2007")
d <- rbind(b, c)
e <- as.numeric(as.character(d$Global_active_power))
hist(e, col = 10, xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
dev.copy(png, "Plot1.png")
dev.off()