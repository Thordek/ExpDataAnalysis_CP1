source("LoadData.R")

filename <- "data.txt"
Date1<-"2007-02-01"
Date2<-"2007-02-02"

Data<-load_data(filename,Date1,Date2)


png("plot4.png")

par(mfrow = c(2, 2))
with(airquality, {
  plot(Data$Time, Data$Global_active_power,col = "black",
       type = "l",ylab = "Global Active Power (kilowatts)",xlab = "")
  plot(Data$Time, Data$Voltage,col = "black",
       type = "l",ylab = "Voltage",xlab = "datetime")
  

  plot(Data$Time,Data$Sub_metering_1,type="l"
      ,col="black", ylab="Energy sub metering",xlab="")
  lines(Data$Time,Data$Sub_metering_2,col="red")
  lines(Data$Time,Data$Sub_metering_3,col="blue")

  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1, 1, 1), col = c("black", "red","blue"))
  plot(Data$Time, Data$Global_reactive_power,col = "black",
       type = "l",ylab = "Global_reactive_power",xlab = "datetime")
})
dev.off()