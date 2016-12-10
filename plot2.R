#plot2
my_data<- read.table("household_power_consumption.txt",sep = ";",header = TRUE,na.strings = c("?"))
my_subset_data<- subset(my_data,Date %in% c("1/2/2007","2/2/2007") )
my_subset_data$Date<-strptime(paste(my_subset_data$Date, my_subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
with(my_subset_data, plot(Date, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()