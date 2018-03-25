source("sourceData.R")

#Plot 3
png("plot3.png", width=400, height=400)
plot(assign_data$datetime, assign_data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
lines(assign_data$datetime, assign_data$Sub_metering_1)
lines(assign_data$datetime, assign_data$Sub_metering_2, col="red")
lines(assign_data$datetime, assign_data$Sub_metering_3, col="blue")
legend("topright", names(assign_data)[7:9],lty=1,col=c("black", "red", "blue"))
dev.off()
