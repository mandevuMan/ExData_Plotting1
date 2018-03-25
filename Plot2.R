source("sourceData.R")

#Plot 2
png("plot2.png", width=400, height=400)
plot(assign_data$datetime, assign_data$Global_active_power, type = "n", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(assign_data$datetime, assign_data$Global_active_power)
dev.off()