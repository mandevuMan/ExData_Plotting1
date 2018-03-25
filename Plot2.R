source("sourceData.R")

#Plot 2
png("plot2.png", width=480, height=480)
plot(assign_data$datetime, assign_data$Global_active_power, type = "n", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(assign_data$datetime, assign_data$Global_active_power)
dev.off()