source("LoadData.R")

filename <- "data.txt"
Date1<-"2007-02-01"
Date2<-"2007-02-02"

Data<-load_data(filename,Date1,Date2)

png("plot2.png")

plot(Data$Time, Data$Global_active_power,col = "black",
     type = "l",ylab = "Global Active Power (kilowatts)",xlab = "")

dev.off()