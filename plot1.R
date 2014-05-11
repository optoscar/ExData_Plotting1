# load function to read and process the data provided
source("extract_data.R")
# load data
data <- extract_data()


# Plot 1
png(filename="plot1.png",width = 480, height = 480)
hist(data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Histogram of Global Active Power")
dev.off()