#
## Plot 4
png("./plot4.png", width = 480, height = 480) #initialize plot

par(mfrow=c(2,2)) #specify plotting panels
par(mar=c(4,4,4,4)) #specifiy margins

#top left plot
plot(dsub$datetime, dsub$Global_active_power, type="l",
     ylab="Global Active Power", xlab="")

#top right plot
plot(dsub$datetime, dsub$Voltage, type="l", 
     ylab="Voltage", xlab="datetime")

#bottom left plot
plot(dsub$datetime, dsub$Sub_metering_1,
     ylab="energy sub metering", xlab="",type="n")
lines(dsub$datetime, dsub$Sub_metering_1, col="black")
lines(dsub$datetime, dsub$Sub_metering_2, col="red")
lines(dsub$datetime, dsub$Sub_metering_3, col="blue")
legend("topright",  col=c("black","red","blue"),lty=c(1,1,1),
       legend = names(dsub)[7:9], bty="n")

#bottom righ plot
plot(dsub$datetime, dsub$Global_reactive_power, type="l",
     ylab="Global reactive power", xlab="datetime")

dev.off()