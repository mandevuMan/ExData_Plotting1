source("sourceData.R")

#Plot 4
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(assign_data$datetime, assign_data$Global_active_power, type = "n", ylab = "Global Active Power", xlab = "")
lines(assign_data$datetime, assign_data$Global_active_power)

plot(assign_data$datetime, assign_data$Voltage, type = "n", ylab = "Voltage)", xlab = "datetime")
lines(assign_data$datetime, assign_data$Voltage)

plot(assign_data$datetime, assign_data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
lines(assign_data$datetime, assign_data$Sub_metering_1)
lines(assign_data$datetime, assign_data$Sub_metering_2, col="red")
lines(assign_data$datetime, assign_data$Sub_metering_3, col="blue")
legend("topright", names(assign_data)[7:9],lty=1,col=c("black", "red", "blue"))

plot(assign_data$datetime, assign_data$Global_reactive_power, type = "n", xlab = "datetime", ylab = "Global_reactive_power")
lines(assign_data$datetime, assign_data$Global_reactive_power)

dev.off()
