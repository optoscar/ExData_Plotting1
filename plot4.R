# load function to read and process the data provided
source("extract_data.R")
# load data
data <- extract_data()


# Plot 4
png(filename="plot4.png",width = 480, height = 480)
# 2 x 2 plot matrix
par(mfrow=c(2,2))
# plot Global Active Power
plot(data$DayTime, data$Global_active_power, type="l", xlab="Day-Time", ylab="Global Active Power (kilowatts)")
# plot Voltage
plot(data$DayTime, data$Voltage, type="l", xlab="Day-Time", ylab="Voltage (volts)")
# Plot Energy sub metering 1 2 and 3
plot(data$DayTime, data$Sub_metering_1, type="l", xlab="Day-Time", ylab="Energy Sub Metering (watt-hour)", col="black")
lines(data$DayTime, data$Sub_metering_2, type="l", col="red")
lines(data$DayTime, data$Sub_metering_3, type="l", col="blue")
legend("topright",c("Sub Metering 1","Sub Metering 2","Sub Metering 3"),lty=1,col=c('black', 'red', 'blue'),cex=0.99)
# Plot Global Reactive Power
plot(data$DayTime, data$Global_reactive_power, type="l", xlab="Day-Time", ylab="Global Reactive Power (kilowatts)")
dev.off()