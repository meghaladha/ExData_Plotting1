Plot2<-function()
{
  closeAllConnections()
  library(sqldf)
  DS<-read.csv.sql("file:///C:/Users/svkabra/Desktop/Coursera Study/household_power_consumption.txt", sep=";", sql = "select * from file where Date='1/2/2007' or Date= '2/2/2007'")
  DS$Date<-as.Date(DS$Date,"%d/%m/%Y")
  plotter<-function()
  {
      plot(DS$Global_active_power, type="l", xaxt ="n", xlab = "", ylab="Global Active Power(kilowatts)")
      axis(1, at=c(0,1500,2880), labels = c("Thu","Fri","Sat"))
  }
  plotter()
  png(filename = "plot2.png", width = 480, height= 480, units = "px")
  plotter()
  dev.off()
  closeAllConnections()
  
}
