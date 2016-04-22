#get the data
source('loaddata.R')

data <-getData()

#convert and merge date and time
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))

#open the png device
png(filename='plot2.png', width=480, height=480, units='px')

#rock and roll!
plot(data$DateTime, data$Global_active_power, type= "l", lwd=1, ylab= "Global Active Power (kilowatts)", xlab="")

#close the png device
dev.off()