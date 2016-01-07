#
## Plot 1
png("./plot1.png", width = 480, height = 480) #initialize plot

hist(dsub$Global_active_power, col="red", main="Global Active Power",
     ylab="Frequency", xlab="Global Active Power (kilowatts)")

dev.off()