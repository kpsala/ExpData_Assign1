#
## Plot 2
png("./plot2.png", width = 480, height = 480) #initialize plot

plot(dsub$datetime, dsub$Global_active_power, type="l",
     ylab = "Global Active Power", xlab = "")

dev.off()