## Getting full dataset and convert the data format
data_full <- read.csv("household_power_consumption.txt", sep=';', na.strings="?", comment.char="", quote='\"')
data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")

## 2-day period in February, 2007.
data <- subset(data_full, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## Plot 1
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Saving to file
dev.copy(png, file="plot1.png", height=640, width=640)
dev.off()