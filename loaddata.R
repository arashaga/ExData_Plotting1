#subset the data


getData <-function(){
  uci01 <- read.delim("/Users/arashaga/Downloads/household_power_consumption.txt",sep=";")
  uci01$Date <-as.Date(uci01$Date,"%d/%m/%Y")
  data <-subset(uci01, Date >="2007-01-01" & Date <="2007-02-01" )
  rm(uci01)
  data
}
