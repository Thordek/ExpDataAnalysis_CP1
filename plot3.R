source("LoadData.R")

filename <- "data.txt"
Date1<-"2007-02-01"
Date2<-"2007-02-02"

Data<-load_data(filename,Date1,Date2)

png("plot3.png")
plot(Data$Time,Data$Sub_metering_1,type="l"
     ,col="black", ylab="Energy sub metering",xlab="")
lines(Data$Time,Data$Sub_metering_2,col="red")
lines(Data$Time,Data$Sub_metering_3,col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1, 1, 1), col = c("black", "red","blue"))

dev.off()