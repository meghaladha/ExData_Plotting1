Plot3<-function()
{
  closeAllConnections()
  library(sqldf)
  DS<-read.csv.sql("file:///C:/Users/svkabra/Desktop/Coursera Study/household_power_consumption.txt", sep=";", sql = "select * from file where Date='1/2/2007' or Date= '2/2/2007'")
  plotter<-function()
  {
      plot(DS$Sub_metering_1, type="l",  xaxt ="n", xlab = "", ylab="Energy sub metering")
      axis(1, at=c(0,1500,2880), labels = c("Thu","Fri","Sat"))
      lines(DS$Sub_metering_2, col="red")
      lines(DS$Sub_metering_3, col="blue")
      legend("topright",legend =  c("sub_metering_1","sub_metering_2","sub_metering_3"), col=c("black", "red","blue"), lty= c(1,1,1))
  }
  plotter()
  png(filename = "plot3.png", width = 480, height= 480, units = "px")
  plotter()
  dev.off()
  closeAllConnections()
  
}