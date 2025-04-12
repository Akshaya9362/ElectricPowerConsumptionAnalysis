# plot2.R

data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", 
                   na.strings = "?", stringsAsFactors = FALSE)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
subset_data <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
subset_data$DateTime <- as.POSIXct(paste(subset_data$Date, subset_data$Time), 
                                   format = "%Y-%m-%d %H:%M:%S")

png("plot2.png", width = 480, height = 480)

plot(subset_data$DateTime, subset_data$Global_active_power,
     type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", xaxt = "n")

axis.POSIXct(1, at = as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03")), 
             labels = c("Thu", "Fri", "Sat"))

dev.off()