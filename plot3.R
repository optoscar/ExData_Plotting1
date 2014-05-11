# load function to read and process the data provided
source("extract_data.R")
# load data
data <- extract_data()

# Plot 3
png(filename="plot3.png",width = 480, height = 480)
plot(data$DayTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering (watt-hour)", col="black")
lines(data$DayTime, data$Sub_metering_2, type="l", col="red")
lines(data$DayTime, data$Sub_metering_3, type="l", col="blue")
legend("topright",c("Sub Metering 1","Sub Metering 2","Sub Metering 3"),lty=1,col=c('black', 'red', 'blue'))
dev.off()
