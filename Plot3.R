#
## Plot 3
png("./plot3.png", width = 480, height = 480)#initialize plot

plot(dsub$datetime, dsub$Sub_metering_1, ylab="energy sub metering",
     xlab= "", type="n")
lines(dsub$datetime, dsub$Sub_metering_1, col="black")
lines(dsub$datetime, dsub$Sub_metering_2, col="red")
lines(dsub$datetime, dsub$Sub_metering_3, col="blue")
legend("topright",  col=c("black","red","blue"),lty=c(1,1,1),
       legend = names(dsub)[7:9])

dev.off()