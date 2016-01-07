#
## This file reads and formats the dataset for graphics production
#

## Read in data
classes <- c(rep("character",2), rep("numeric",7))

dt <- read.table("household_power_consumption.txt",sep=";", header=TRUE,
                 colClasses = classes, na.strings = "?")
data <- dt # to avoid re reading table during debugging

temp <- paste(as.Date(data$Date, format = "%d/%m/%Y"), data$Time, sep=" ")
data$datetime <- as.POSIXct(temp, format="%Y-%m-%d %H:%M:%S")

data[,1] <- as.Date(data[,1],"%d/%m/%Y") #format date

## Subset data based on date range
t1 <- as.Date("2007-02-01")
t2 <- as.Date("2007-02-02")

dsub <- data[data$Date %in% t1:t2, ]