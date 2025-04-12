# plot1.R

# Load and preprocess the data if not done already
data <- read.table("household_power_consumption.txt", 
                   header = TRUE, 
                   sep = ";", 
                   na.strings = "?", 
                   stringsAsFactors = FALSE)

# Convert Date column to Date class
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Subset data for February 1 and 2, 2007
subset_data <- subset(data, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))

# Open PNG device
png("plot1.png", width = 480, height = 480)

# Create histogram
hist(subset_data$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")

# Close the PNG device
dev.off()