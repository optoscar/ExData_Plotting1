# Function to read and process the data provided
extract_data <- function () {
  # Path pointing the txt file
  file_path = "../household_power_consumption.txt"
  
  # Read data taking care of the separator ";", no to use string as factors and the NA
  data <- read.table(file_path, header = TRUE, sep = ";",stringsAsFactors=FALSE,na.strings=c("?","NA"))
  
  # convert variable DATA from text to Date
  data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
  
  # Select those rows indicated, only days 2007-02-01&02
  get.rows   <- data$Date >= as.Date("2007-02-01") & data$Date <= as.Date("2007-02-02")
  
  # extract those rows
  data2 <- data[get.rows,]
  
  # Create a new variable with Date and Time, will be used later to make the plots
  data2$DayTime <- strptime(paste(data2$Date, data2$Time), format='%Y-%m-%d %H:%M:%S')
  
  #return data2
  data2
}


