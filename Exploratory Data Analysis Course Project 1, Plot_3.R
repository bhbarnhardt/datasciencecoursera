setwd("Data Science/R-Exploratory Data Analysis COURSERA")
a = read.table("household_power_consumption.txt", sep=";")
names(a) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
b <- subset(a, Date == "1/2/2007")
c <- subset(a, Date == "2/2/2007")
e <- rbind(b, c)
f <- subset(e, select=c(Sub_metering_1, Sub_metering_2, Sub_metering_3))
g <- as.numeric(as.character(f$Sub_metering_1))
h <- as.numeric(as.character(f$Sub_metering_2))
i <- as.numeric(as.character(f$Sub_metering_3))
plot.default(g, xlab = " ", ylab = "Energy sub metering", pch = " ")
points(g, pch = " ")
lines(g, col = "grey")
points(h, pch = " ")
lines(h, col = "red")
points(i, pch = " ")
lines(i, col = "blue")
dev.copy(png, "Plot3.png")
dev.off()