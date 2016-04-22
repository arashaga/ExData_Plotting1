#subset the data


getData <-function(){
  ## Fix the directory to point to the data ok?
  uci01 <- read.delim("household_power_consumption.txt",sep=";")
  uci01$Date <-as.Date(uci01$Date,"%d/%m/%Y")
  data <-subset(uci01, Date >="2007-01-01" & Date <="2007-02-01" )
  rm(uci01)
  data
}
