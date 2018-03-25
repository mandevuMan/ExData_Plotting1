#Extract the zipped file to a suitable location
#Be sure to set the location of the extracted files as your working directory for R

ds<-read.delim("household_power_consumption.txt", header = T, sep=";", dec = ".")
head(ds)

ds$Date<-as.Date(ds$Date,"%d/%m/%Y")
ds$Time<-strptime(as.character(ds$Time),"%T")
ds$Time<-strftime(ds$Time, "%H:%M:%S")

assign_data<-subset(ds,ds$Date>="2007-02-01" & ds$Date<="2007-02-02")

#str(assign_data)

assign_data$Global_active_power<-as.numeric(as.character(assign_data$Global_active_power))
assign_data$Global_reactive_power<-as.numeric(as.character(assign_data$Global_reactive_power ))
assign_data$Voltage<-as.numeric(as.character(assign_data$Voltage) )
assign_data$Global_intensity<-as.numeric(as.character(assign_data$Global_intensity) )
assign_data$Sub_metering_1<-as.numeric(as.character(assign_data$Sub_metering_1) )
assign_data$Sub_metering_2<-as.numeric(as.character(assign_data$Sub_metering_2) )
assign_data$Sub_metering_3<-as.numeric(as.character(assign_data$Sub_metering_3) )

#str(assign_data)

assign_data$datetime<-as.POSIXct(paste(assign_data$Date, assign_data$Time), format="%Y-%m-%d %H:%M:%S")
