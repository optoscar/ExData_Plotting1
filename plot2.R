# load function to read and process the data provided
source("extract_data.R")
# load data
data <- extract_data()


# Plot 2
png(filename="plot2.png",width = 480, height = 480)
with(data,plot(DayTime,Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()
