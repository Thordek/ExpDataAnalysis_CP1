source("LoadData.R")

filename <- "data.txt"
Date1<-"2007-02-01"
Date2<-"2007-02-02"

Data<-load_data(filename,Date1,Date2)

png("plot1.png")
hist(Data$Global_active_power,  col = "red", 
     main = "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()