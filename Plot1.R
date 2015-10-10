Plot1<-function()
{
  library(sqldf)
  DS<-read.csv.sql("file:///C:/Users/svkabra/Desktop/Coursera Study/household_power_consumption.txt", sep=";", sql = "select * from file where Date='1/2/2007' or Date= '2/2/2007'", connection = NULL)
  closeAllConnections()
  hs<-function()
  {
    hist(DS$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power(kilowatts)")
  }
  hs()
  png(filename = "plot1.png", width = 480, height= 480, units = "px")
  plot.new()
  hs()
  dev.off()
  closeAllConnections()
  
}
