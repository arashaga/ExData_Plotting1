#get the data
source('loaddata.R')

data <-getData()

data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
# creating Plot4
png("plot4.png", width = 480, height = 480)

# create subdivision
par(mfrow=c(2,2))

#add the plots one by one
plot(data$DateTime, data$Global_active_power, type= "l", lwd=1, ylab= "Global Active Power (kilowatts)", xlab="") 
plot(data$DateTime, data$Voltage, type="l", xlab="datetime", ylab="Voltage")   
plot(data$DateTime, data$Sub_metering_1, type="l", ylab= "Energy sub metering", xlab="")
lines(data$DateTime, data$Sub_metering_2, type="l", col="red")
lines(data$DateTime, data$Sub_metering_3, type="l", col="blue")
plot(data$DateTime, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")  


#never forget the legends!
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, bty="n", col=c("black", "red", "blue")) 
# bottom right

dev.off()