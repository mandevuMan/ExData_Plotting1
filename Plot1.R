source("sourceData.R")

#Plot 1
png("plot1.png", width=480, height=480)
hist(assign_data$Global_active_power, main = "Global Active Power", col="red", xlab = "Global Active Power (kilowatts)")
dev.off()

